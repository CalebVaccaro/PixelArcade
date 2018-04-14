using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Counts the amount of kills the object has
/// Accumulates the death of objects with TakeDamage script
/// </summary>
public class CountKills : MonoBehaviour {

    // the amount of kills for the player
    private int kills;

    #region Properties

    public int Kills
    {
        get
        {
            return kills;
        }

        set
        {
            kills = value;
        }
    }

    #endregion

    // Use this for initialization
    void Start () {

        // get components
        kills = 0;
	}

    public void CheckHealth(int kill)
    {
        kills = kills + kill;
    }
}
