using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Take Damage for whatever the script is on
/// Will take in a damage parameter
/// </summary>
public class TakeDamage : MonoBehaviour {

    // get health
    public int health = 3;


    // get accessmachien gameobject
    [SerializeField]
    private GameObject player;

    // grab take damage reference
    private CountKills countKills;

    private void Start()
    {
        countKills = player.GetComponent<CountKills>();
    }

    public void DamageTaken(int damageAmount)
    {
        // decrement health by the amount of damage
        health -= damageAmount;

        // check if health is 0
        if (health <= 0)
        {
            Dead();
        }
        else
            Debug.Log("AI Health: " + health);
    }

    // set dead state
    // increment player kills
    // destroy object
    public void Dead()
    {
        // get reference from countKills (Needs to be revised )
        // countKills = GameObject.Find("EnemyAI").GetComponent<CountKills>();

        // destroy object
        Destroy(gameObject);

        // increment kill
        countKills.CheckHealth(1);
        
    }
}
