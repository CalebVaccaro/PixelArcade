using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FPSChange : MonoBehaviour {

    // get bool to acces if player is at machine
    private bool isFPS;

    // allow player to pick up a gun
    private bool canPickUp;

    #region Properties

    public bool IsFPS
    {
        get
        {
            return isFPS;
        }
        set
        {
            isFPS = value;
        }
    }

    public bool CanPickUp
    {
        get
        {
            return canPickUp;
        }
        set
        {
            canPickUp = value;
        }
    }
    #endregion

    private void OnTriggerEnter(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "BackAlley")
        {
            isFPS = true;

            canPickUp = true;

            Debug.Log("Player is in the Back Alley");
        }

       
    }

    private void OnTriggerExit(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "BackAlley")
        {
            isFPS = false;

            canPickUp = false;

            Debug.Log("Player is not in the Back Alley");
        }

        
    }
}
