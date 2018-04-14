using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Player Movement will control how the player moves the character in 3D world
/// This does not allow access to players in the arcade games
/// </summary>
public class PlayerMovement : MonoBehaviour {

    // Attributes //

    // float to determine the speed of the charcter will move when walking
    private const float WALKSPEED = 3.0f;

    // float to determine the speed of the charcter will move when running
    private const float RUNSPEED = 6.0f;

    // float to determine speed of player (can be change through code)
    private float speed;

    // float to set the speed of the player jumping
    private float jumpSpeed;

    // floats for controll sensitivity
    private float rotateSpeed;

    // float to set the gravity when the player is jumping
    private float gravity;

    // vector3 movement to move the attribute
    private Vector3 moveDirection;

    // character controller for the player
    private CharacterController playerController;

    // check if player is in aracde game
    private CheckEntityAccess checkEntityAccess;


    #region Properties

    public float Speed
    {
        get
        {
            return speed;
        }

        set
        {
            speed = value;
        }
    }


    #endregion

    // call at the start of loading a player
    private void Start()
    {
        // get controller to be moved
        playerController = GetComponent<CharacterController>();

        // set Vector to zero
        moveDirection = Vector3.zero;

        // set player attribute values
        speed = WALKSPEED;
        jumpSpeed = 8.0f;
        rotateSpeed = 3.0f;
        gravity = 20.0f;

        checkEntityAccess = GameObject.Find("GameManager").GetComponent<CheckEntityAccess>();
    }

    // FixedUpdate is called once per frame
    void FixedUpdate () {

        // Call Move
        Move();
    }

    private void Move()
    {

        if (!checkEntityAccess.EntityAccess)
        {
            // check if player is on the ground
            if (playerController.isGrounded)
            {
                // set vector to be able to move in the z direction
                moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

                moveDirection = transform.TransformDirection(moveDirection);

                moveDirection *= speed;

                // check if user input is jump
                if (Input.GetButton("Jump"))
                {
                    moveDirection.y = jumpSpeed;
                }

                // check if user input is running
                if (Input.GetKey(KeyCode.LeftShift))
                {
                    // increments right
                    speed = RUNSPEED;
                }
                else
                    speed = WALKSPEED;
            }

            // use gravity
            moveDirection.y -= gravity * Time.deltaTime;

            playerController.Move(moveDirection * Time.deltaTime);

            // Rotate Player
            transform.Rotate(0, Input.GetAxis("Mouse X"), 0);

            // Print Speed Value
            //x Debug.Log("Speed:" + speed);
        }
    }
}
