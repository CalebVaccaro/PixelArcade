using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonCamera : MonoBehaviour {

    // Attributes //

    // collect all the views for the camera
    [SerializeField]
    private Transform[] views = new Transform[4];

    // calculates the space between the position and the target
    private Vector3 rotation;

    // float to limit Y rotation for camnera
    private float xRotate = 5.0f;

    // float to limit Y rotation for camnera
    private float yRotate = 5.0f;

    // calculates to offset space between the position and the target
    [SerializeField]
    private Space offsetPositionSpace = Space.Self;  

    // the amount of time it takes to focus on new position
    [SerializeField]
    private float transitionSpeed;

    // get the defualt rotation from the camera
    private Vector3 defualtRotation;

    // * fps controller attributes

    // gameObject reference to the player
    [SerializeField]
    private GameObject player;

    // get a fpschange reference
    private FPSChange fPSChange;

    // check if player is in aracde game
    private CheckEntityAccess checkEntityAccess;

    // bool to check if camera is looking at target
    //x private bool lookAt = true;

    private void Start()
    {
        fPSChange = player.GetComponent<FPSChange>();

        checkEntityAccess = GameObject.Find("GameManager").GetComponent<CheckEntityAccess>();

        xRotate = GameObject.Find("Player").transform.eulerAngles.y;
    }

    private void LateUpdate()
    {
        // Refresh Camera on LateUpdate
        Refresh();
       
        // if player is not accessing an entity then let full roam of camera
        if (!checkEntityAccess.EntityAccess)
        {
            xRotate += Input.GetAxis("Mouse X");
            yRotate -= Input.GetAxis("Mouse Y");

            transform.eulerAngles = new Vector3(yRotate,xRotate, 0);
        }
        
    }

    /// <summary>
    /// Refresh will adjust the camera angle to the player
    /// </summary>
    private void Refresh()
    {
        // check if any position transform is null
        for (int i = 0; i < views.Length; i++)
        {
            if (views[i] == null)
            {
                Debug.Log("Missing target ref !: ", this.views[i]);

                return;
            }
        }

        if (fPSChange.IsFPS)
        {

            // set new position and rotation on new target (FPS)
            transform.position = Vector3.Lerp(transform.position, views[1].position, Time.deltaTime * transitionSpeed);

        }
        if (checkEntityAccess.CounterAccess)
        {
            // set new position and rotation on new target (FPS)
            transform.position = Vector3.Lerp(transform.position, views[2].position, Time.deltaTime * transitionSpeed);

            // get rotation angles to make a smooth transition to set the rotation
            Vector3 currentAngle = new Vector3(
                Mathf.LerpAngle(views[2].transform.rotation.eulerAngles.x, views[2].transform.rotation.eulerAngles.x, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[2].transform.rotation.eulerAngles.y, views[2].transform.rotation.eulerAngles.y, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[2].transform.rotation.eulerAngles.z, views[2].transform.rotation.eulerAngles.z, Time.deltaTime * transitionSpeed)
                );

            // set the camera euler angles to the current position
            transform.eulerAngles = currentAngle;
        }
        // switch to arcade camera view ( goes through all 
        if (checkEntityAccess.ArcadePlay)
        {

            // set new position and rotation on new target (FPS)
            transform.position = Vector3.Lerp(transform.position, views[3].position, Time.deltaTime * transitionSpeed);

            // get rotation angles to make a smooth transition to set the rotation
            Vector3 currentAngle = new Vector3(
                Mathf.LerpAngle(views[3].transform.rotation.eulerAngles.x, views[3].transform.rotation.eulerAngles.x, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[3].transform.rotation.eulerAngles.y, views[3].transform.rotation.eulerAngles.y, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[3].transform.rotation.eulerAngles.z, views[3].transform.rotation.eulerAngles.z, Time.deltaTime * transitionSpeed)
                );

            // set the camera euler angles to the current position
            transform.eulerAngles = currentAngle;
            
        }
        // switch to fps camera view
        else
        {
            // set new position and rotation on new target (FPS)
            transform.position = Vector3.Lerp(transform.position, views[0].position, Time.deltaTime * transitionSpeed);

            // get rotation angles to make a smooth transition to set the rotation
            Vector3 currentAngle = new Vector3(
                Mathf.LerpAngle(views[0].transform.rotation.eulerAngles.x, views[0].transform.rotation.eulerAngles.x, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[0].transform.rotation.eulerAngles.y, views[0].transform.rotation.eulerAngles.y, Time.deltaTime * transitionSpeed),
                Mathf.LerpAngle(views[0].transform.rotation.eulerAngles.z, views[0].transform.rotation.eulerAngles.z, Time.deltaTime * transitionSpeed)
                );

            // set the camera euler angles to the current position
            transform.eulerAngles = currentAngle;
        }
    }

    /// <summary>
    /// After Setting the camera rotation and position for each entity we need to reset the camera rotation back onto the player
    /// </summary>
    private void ResetRotation()
    {
        transform.rotation = views[0].rotation;
    }
}
