using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Allows the gun the script is attached to to shoot out projectiles
/// Each shot will be a raycast
/// Uses Fire1
/// </summary>
public class ShootBullets : MonoBehaviour {

    // Using RayCast (modified) link: https://www.youtube.com/watch?v=AGd16aspnPA
    // * Takes the raycast hit point from the camera
    // * checks if there is another object there
    // * if so minus health
    // * script can insert audio too ( not implemented )

    // * bullet attributes * //

    // float to use as damage modifier
    private int damage = 1;

    // determine how fast weapon can fire
    private float fireRate = .25f;

    // float to use as range 
    private float range = 100f;

    // hitforce is the amount of force it applies to another object
    private float hitforce = 50f;

    // transform gun end each time a fire happens
    [SerializeField]
    private Transform gunEnd;

    // * object reference attributes * //

    // camera object to reference
    public Camera fpsCam;

    // amount of seconds for each shot ( duration )
    private WaitForSeconds shotDuration = new WaitForSeconds(.07f);

    // lineRenderer to shoot in that direction
    private LineRenderer laserline;

    // check each time to fire next
    private float nextFire;

	// Use this for initialization
	void Start () {

        // get components
        laserline = GetComponent<LineRenderer>();

        // set fps cam to main cam
        fpsCam = Camera.main;
	}
	
	// Update is called once per frame
	void Update () {

        // check if player wants to shoot (check input) and time is geater than next fire
        if (Input.GetButton("Fire1") && Time.time >= nextFire)
        {
            nextFire = Time.time + 1f / fireRate;
            // call shoot method
            Shoot();
        }

	}

    /// <summary>
    /// / uses raycast point
    /// </summary>
    private void Shoot()
    {
        // increment next fire by 1
        nextFire = Time.time + fireRate;

        // call shoteffect
        StartCoroutine(ShotEffect());

        // get new rayOrigin position (middle of camera)
        Vector3 rayOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0));

        // call new raycast object
        RaycastHit hit;

        // set laser line to gunEnd position
        laserline.SetPosition(0, gunEnd.position);
        
        // uses fps Cam position, transform forward, the raycast of hit , and the range
        // at this point it will detect when shooting if target is hit
        if (Physics.Raycast(rayOrigin, fpsCam.transform.forward, out hit, range))
        {
            laserline.SetPosition(1, hit.point);

            // print to console what the raycast hit
            Debug.Log(hit.transform.name);

            // call target script to create damage
            TakeDamage health = hit.collider.GetComponent<TakeDamage>();

            // check if health is null
            if (health != null)
            {
                health.DamageTaken(damage);
            }
            // can add force
            // hit.rigidbody.addforce (-hit.normal * hitforce ); 

        }
        else
            // set laserline position as far as the weapon length
            laserline.SetPosition(1, rayOrigin + (fpsCam.transform.forward * range));


    }

    /// <summary>
    /// sets gameobjects to true when shot is made
    /// will be called in update
    /// </summary>
    /// <returns></returns>
    private IEnumerator ShotEffect()
    {
        // play gun audio here

        // enable laserLine
        laserline.enabled = true;
        // wait shot duration time
        yield return shotDuration;
        // disable laserline
        laserline.enabled = false;
    }
}
