using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerArcadeMachineInput : MonoBehaviour {

    // get machine access
    // might turn into an array of access machines
    [SerializeField]
    private GameObject accessMachine;

    // get checkatmachine script to call attributes
    private CheckAtMachine checkMachine;

    // to check the bool statement for the bool in CheckAtMachine
    private bool atMachine;

    // checks if player is going to play
    private bool playerPlays;

    // checks if player wants to leave game
    private bool playerExits;

    #region Properties

    public bool PlayerPlays
    {
        get
        {
            return playerPlays;
        }

        set
        {
            playerPlays = value;
        }
    }

    public bool PlayerExits
    {
        get
        {
            return playerExits;
        }

        set
        {
            playerExits = value;
        }
    }
    #endregion

    void Start()
    {
        checkMachine = accessMachine.GetComponent<CheckAtMachine>(); 

        playerPlays = false;

        playerExits = false;
    }

    void Update()
    {
        atMachine = checkMachine.AtMachine;

        CheckPlayerPlayInput();
    }

    /// <summary>
    /// Check if player is at the machine
    /// checks if player input B to access game
    /// </summary>
    private void CheckPlayerPlayInput()
    {
        if (atMachine == true && Input.GetKey(KeyCode.B))
        {

            playerPlays = true;

        }
        if (atMachine == true && Input.GetKey(KeyCode.Escape))
        {
            playerPlays = false;

            playerExits = true;
        }
    }

}
