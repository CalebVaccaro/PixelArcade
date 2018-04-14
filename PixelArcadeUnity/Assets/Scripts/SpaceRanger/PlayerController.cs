using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Move the Player
/// Can be used in other arcade games
/// obselete for 3d game movement
/// </summary>
public class PlayerController : MonoBehaviour {

    // speed for how fast character should move
    private float speed;

    // get the x direction for the player
    private float x;

    // get the y direction for the player
    private float y;

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

    // Use this for initialization
    void Start () {
        speed = .5f;
	}
	
	// Update is called once per frame
	void Update () {

        x = speed;
        y = speed;
	}

    /// <summary>
    /// Should be where player moves for more fluent update speed
    /// </summary>
    private void FixedUpdate()
    {
        if (Input.GetKey(KeyCode.A))
        {
            // set new vector using x and y coordinates
            this.GetComponent<Rigidbody2D>().velocity = new Vector2(-x, 0);
        }
        if (Input.GetKey(KeyCode.D))
        {
            // set new vector using x and y coordinates
            this.GetComponent<Rigidbody2D>().velocity = new Vector2(x, 0);
        }

    }
}
