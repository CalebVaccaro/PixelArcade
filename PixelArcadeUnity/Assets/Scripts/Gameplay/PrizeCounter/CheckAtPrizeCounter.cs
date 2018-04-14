using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckAtPrizeCounter : MonoBehaviour {

    // * Use this script to call the check of the player being at the prize counter
    // * detects if the player collider is inside the on Trigger box collider at the prize couter

    // get bool to acces if player is at machine
    private bool atCounter;

    #region Properties

    public bool AtCounter
    {
        get
        {
            return atCounter;
        }
        set
        {
            atCounter = value;
        }
    }
    #endregion

    private void OnTriggerEnter(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "Player")
        {
            atCounter = true;
        }

        Debug.Log("Player is at Counter");
    }

    private void OnTriggerExit(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "Player")
        {
            atCounter = false;
        }

        Debug.Log("Player is not at Counter");
    }
}
