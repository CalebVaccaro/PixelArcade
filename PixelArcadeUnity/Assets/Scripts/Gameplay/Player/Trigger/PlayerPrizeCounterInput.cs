using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPrizeCounterInput : MonoBehaviour {

    // get machine access
    // might turn into an array of access machines
    [SerializeField]
    private GameObject prizeCounter;

    // get checkatmachine script to call attributes
    private CheckAtPrizeCounter checkAtPrizeCounter;

    // to check the bool statement for the bool in CheckAtMachine
    private bool atPrizeCounter;

    // checks if player is going to play
    private bool counterAccess;

    #region Properties

    public bool CounterAccess
    {
        get
        {
            return counterAccess;
        }

        set
        {
            counterAccess = value;
        }
    }

    #endregion

    // Use this for initialization
    void Start () {

        checkAtPrizeCounter = prizeCounter.GetComponent<CheckAtPrizeCounter>();

        atPrizeCounter = false;

    }
	
	// Update is called once per frame
	void Update () {

        atPrizeCounter = checkAtPrizeCounter.AtCounter;

        CheckPlayerPlayInput();

    }

    /// <summary>
    /// Check if player is at the prize counter
    /// checks if player input B to access game
    /// </summary>
    private void CheckPlayerPlayInput()
    {
        if (atPrizeCounter == true && Input.GetKey(KeyCode.B))
        {

            counterAccess = true;

        }
        if (atPrizeCounter == true && Input.GetKey(KeyCode.Escape))
        {
            counterAccess = false;
        }
    }
}
