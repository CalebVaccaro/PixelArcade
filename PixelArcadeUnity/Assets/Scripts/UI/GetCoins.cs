using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GetCoins : MonoBehaviour {

    // get accessmachien gameobject
    [SerializeField]
    private GameObject player;

    // get text trying print
    [SerializeField]
    private Text playerCoinUI;

    // checkatMachine reference
    private CountCoins countCoins;

    // Use this for initialization
    void Start()
    {
        countCoins = player.GetComponent<CountCoins>();
    }

    // Update is called once per frame
    void Update()
    {
        ShowPlayerCoins();
    }

    // print player atMachine
    private void ShowPlayerCoins()
    {
        playerCoinUI.text = "Player Coins: " + countCoins.Coins.ToString();
    }
}
