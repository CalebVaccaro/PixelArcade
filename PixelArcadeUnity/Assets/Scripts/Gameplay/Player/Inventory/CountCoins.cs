using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Gets the Coin Amount from Kills
/// Adds coins each time
/// </summary>
public class CountCoins : MonoBehaviour {

    // collect the amount of coins
    private int coins;

    // get the amount of kills
    private int kill;

    // reference the CountKill script
    private CountKills countKills;

    #region Properties

    public int Coins
    {
        get
        {
            return coins;
        }

        set
        {
            coins = value;
        }
    }

    #endregion

    // Use this for initialization
    void Start () {

        countKills = GetComponent<CountKills>();
	}

    private void Update()
    {
        CollectCoins();
    }

    private void CollectCoins()
    {
        // get the amount of kills from countKills
        kill = countKills.Kills;

        if (kill != 0)
        {
            // get 3 coins foreach kill
            coins = kill * 3;
        }
        
    }
	
}
