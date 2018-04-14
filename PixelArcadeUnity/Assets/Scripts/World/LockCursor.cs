using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Locks and Hides Cursor when needed
/// </summary>
public class LockCursor : MonoBehaviour {

	// Use this for initialization
	void Start () {

        // make cursor not visible
        Cursor.visible = false;

        // lock cursor into place
        Cursor.lockState = CursorLockMode.Locked;

	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
