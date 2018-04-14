using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Checks if Player is in Area of an Arcade Machine
/// Uses the box collider on the arcade machine and player capsule collider
/// </summary>
public class CheckAtMachine : MonoBehaviour {

    // get bool to acces if player is at machine
    private bool atMachine;

    #region Properties

    public bool AtMachine
    {
        get
        {
            return atMachine;
        }
        set
        {
            atMachine = value;
        }
    }
    #endregion

    private void OnTriggerEnter(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "Player")
        {
            atMachine = true;

            Debug.Log("Player is at Machine");
        }
        
        
    }

    private void OnTriggerExit(Collider other)
    {
        // check if other object is player
        if (other.gameObject.tag == "Player")
        {
            atMachine = false;

            Debug.Log("Player is not at Machine");
        }

        
    }
}
