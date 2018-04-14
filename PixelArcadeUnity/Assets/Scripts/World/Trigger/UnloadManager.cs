using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class UnloadManager : MonoBehaviour {

    // * Use this script on all Arcade Machines
    // * checks each player input on each of the arcade machines (but on each one)

    // check if scene has been loaded
    private bool unloaded;

    // indicates which scene to be on
    [SerializeField]
    private int scene;

    // gets the scene from each of the arcade machines
    private PlayerArcadeMachineInput playerArcadeInput;

    // Use this for initialization
    void Start()
    {

        // get check arcade input reference
        playerArcadeInput = GameObject.Find("Player").GetComponent<PlayerArcadeMachineInput>();

    }

    // Update is called once per frame
    void Update () {

        // check if player wants to play arcade machicine
        if (playerArcadeInput.PlayerExits)
        {
            // check if scene is already loaded or not
            if (!unloaded)
            {
                unloaded = true;

                // load the arcade game scene as an additiive
                SceneManager.UnloadSceneAsync(scene);

            }

        }

    }
}
