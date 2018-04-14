using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Drop Weapons for user input or exiting fps mode
/// On Player GameObject
/// </summary>
public class WeaponDrop : MonoBehaviour {

    // Leaving FPS
    // * Drops a weapon in the players inventory when leaving fps
    // * Delete the weapon object, reinstaiate a new weapon object.SetActive(false)

    // User Input to Drop
    // * Deletes the object from the player
    // * sets a new weapon object in front of player
    // * which then can be picked up

    // weapon on player object
    [SerializeField]
    private GameObject playerWeapon;

    // get gun that wants to be pickedup 
    [SerializeField]
    private GameObject gunOnGround;

    // gameobject, script reference
    [SerializeField]
    private GameObject player;

    // call fpschange reference
    private FPSChange fPSChange;

	// Use this for initialization
	void Start () {

        // get player fpschange reference
        fPSChange = this.GetComponent<FPSChange>();

    }

    private void Update()
    {
        // call input method to check whether or not to drop weapon
        DropInput();
    }

    private void OnTriggerExit(Collider other)
    {
        // check if playuer has left the fps place
        if ((other.CompareTag("BackAlley") && !fPSChange.CanPickUp))
        {
            playerWeapon.SetActive(false);

            gunOnGround.SetActive(true);
        }
    }

    /// <summary>
    /// Checks if user wants to drop weapon
    /// </summary>
    private void DropInput()
    {
        if (Input.GetKey(KeyCode.Q) && fPSChange.IsFPS)
        {
            playerWeapon.SetActive(false);

            // set gun on ground position in front of player when drops
            gunOnGround.transform.position = playerWeapon.transform.position;
            gunOnGround.SetActive(true);
        }
    }
}
