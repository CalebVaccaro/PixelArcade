using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Rotate the gun in the same direction as the main camera
/// </summary>
public class GetRotation : MonoBehaviour {

    // get camera object reference
    private Camera fpsCam;

	// Use this for initialization
	void Start () {

        // cheese fix still working on
        fpsCam = Camera.main;
	}
	
	// Update is called once per frame
	void Update () {

        // set gun rotation to the fps camera
        transform.rotation = fpsCam.transform.rotation;

	}
}
