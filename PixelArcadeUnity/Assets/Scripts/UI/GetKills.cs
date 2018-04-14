using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Prints to UI the amount of kills the player has
/// </summary>
public class GetKills : MonoBehaviour
{
    // get accessmachien gameobject
    [SerializeField]
    private GameObject player;

    // get text trying print
    [SerializeField]
    private Text playerPlaysUI;

    // checkatMachine reference
    private CountKills countKills;

    // Use this for initialization
    void Start()
    {
        countKills = player.GetComponent<CountKills>();
    }

    // Update is called once per frame
    void Update()
    {
        ShowPlayerKills();
    }

    // print player atMachine
    private void ShowPlayerKills()
    {
        playerPlaysUI.text = "Player Kills: " + countKills.Kills.ToString();
    }
}