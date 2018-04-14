using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Checks if Player is at Machine
/// </summary>
public class GetPlayerPlays : MonoBehaviour
{
    // get accessmachien gameobject
    [SerializeField]
    private GameObject player;

    // get text trying print
    [SerializeField]
    private Text playerPlaysUI;

    // checkatMachine reference
    private PlayerArcadeMachineInput playerInput;

    // Use this for initialization
    void Start()
    {
        playerInput = player.GetComponent<PlayerArcadeMachineInput>();
    }

    // Update is called once per frame
    void Update()
    {
        SetPlayerInput();
    }

    // print player atMachine
    private void SetPlayerInput()
    {
        playerPlaysUI.text = "Player Plays: " + playerInput.PlayerPlays.ToString();
    }
}
