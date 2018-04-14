using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Check if Player is playing an arcade game
/// </summary>
public class CheckEntityAccess : MonoBehaviour {

    // check if player is at an entity or not
    private bool entityAccess = false;

    // check if player is at arcade machine or not
    private bool arcadePlay;

    // check if player is at prize counter or not
    private bool counterAccess;

    // get playerArcadeMachineInput
    private PlayerArcadeMachineInput playerInput;

    // get CheckCounterAccess script
    private PlayerPrizeCounterInput checkAtPrizeCounter;

    // get player gameobject
    [SerializeField]
    private GameObject player;

    // get player gameobject
    [SerializeField]
    private GameObject counterTrigger;

    #region Properties

    public bool EntityAccess
    {
        get
        {
            return entityAccess;
        }

        set
        {
            entityAccess = value;
        }
    }

    public bool ArcadePlay
    {
        get
        {
            return arcadePlay;
        }

        set
        {
            arcadePlay = value;
        }
    }

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
        // get check for arcade play
        playerInput = player.GetComponent<PlayerArcadeMachineInput>();

        // get check for counter access
        checkAtPrizeCounter = counterTrigger.GetComponent<PlayerPrizeCounterInput>();
	}
	
	// Update is called once per frame
	void Update () {

        // Call Check Methods
        CheckCounterAccess();
        CheckPlayerPlays();

    }

    private void CheckCounterAccess()
    {
        // check if player wants to access the prize counter
        if (checkAtPrizeCounter.CounterAccess)
        {
            entityAccess = true;

            counterAccess = true;
        }
        else
        {
            entityAccess = false;
            counterAccess = false;
        }
    }

    private void CheckPlayerPlays()
    {
        // check if player wants to play a game
        if (playerInput.PlayerPlays)
        {
            entityAccess = true;

            arcadePlay = true;
        }
        else
        {
            entityAccess = false;
            arcadePlay = false;
        }
    }
}
