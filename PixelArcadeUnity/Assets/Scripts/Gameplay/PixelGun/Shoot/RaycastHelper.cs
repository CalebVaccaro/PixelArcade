using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycastHelper : MonoBehaviour {

    // detects the range of the weapon
    private float weaponRange = 50f;

    // grabs paerent camera object
    [SerializeField]
    private Camera fpsCam;

	// Use this for initialization
	void Start () {

        // get components
        fpsCam = Camera.main;

	}
	
	// Update is called once per frame
	void Update () {

        // get origin for the line ( uses fps cam viewport )
        Vector3 lineOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0));
        // draws the ray line in the editior
        Debug.DrawRay(lineOrigin, fpsCam.transform.forward * weaponRange, Color.green);

	}
}
