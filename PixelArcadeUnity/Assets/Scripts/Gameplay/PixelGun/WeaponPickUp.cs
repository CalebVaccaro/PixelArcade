using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Determines if player picked up weapon
/// Universal Gun Pick Up
/// </summary>
public class WeaponPickUp : MonoBehaviour {

    // Class is universal and does not specify what gun

    // get gun gameobject you want to pickup
    [SerializeField]
    private GameObject gunOnGround;

    // get gun that wants to be pickedup 
    [SerializeField]
    private GameObject gunPickedUp;

    // gameobject, script reference
    // gameobject reference
    [SerializeField]
    private GameObject player;

    // script reference
    private FPSChange fPSChange;

    #region Properties

    public GameObject GunOnGround
    {
        get
        {
            return gunOnGround;
        }
    }

    #endregion

    // Use this for initialization
    void Start () {

        gunPickedUp.SetActive(false);

        fPSChange = player.GetComponent<FPSChange>();
		
	}

    private void OnTriggerEnter(Collider other)
    {
        // check if other collider is player
        if (other.CompareTag("Player") && fPSChange.CanPickUp)
        {
            // set gun on ground to an inactive gameobject
            gunOnGround.SetActive(false);
            // set gun on player to be true
            gunPickedUp.SetActive(true);

            Debug.Log("Player Picked Up Weapon");
        }
    }

}
