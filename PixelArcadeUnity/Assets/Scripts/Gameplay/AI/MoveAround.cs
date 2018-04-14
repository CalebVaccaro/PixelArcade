using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Allows AI to move around 
/// </summary>
public class MoveAround : MonoBehaviour {

    // walk speed variable
    private float walkSpeed;

    // walk speed variable
    private float incrementspeed;

    // vector3 movement to move the attribute
    private Vector3 moveDirection;

    // get target positions
    [SerializeField]
    private GameObject target1;

    [SerializeField]
    private GameObject target2;


    // bool to check if position should switch targets
    private bool switched = true;

    private void Start()
    {
        walkSpeed = .2f;

        Transform target1T = target1.transform;
        // look at first target
        transform.LookAt(target1T);
    }

    private void Update()
    {
        MoveAI();
    }

    /// <summary>
    /// Move AI around
    /// </summary>
    private void MoveAI()
    {
       
    }
}
