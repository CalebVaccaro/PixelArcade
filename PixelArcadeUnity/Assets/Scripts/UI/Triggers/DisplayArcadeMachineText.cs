using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Display the Text of the Arcade Machine
/// This is triggered when player is near the machine (AtMachine)
/// </summary>
public class DisplayArcadeMachineText : MonoBehaviour {

    // * Displays:
    // * Arcade Machine Name
    // * Amount of Coins to Play
    // * The Input to Press to Play

    // string to be printed on text
    private string textToDisplay;

    // text reference to display onscreen
    [SerializeField]
    private Text textUI;

    // image reference to display onscreen
    [SerializeField]
    private Image imageUI;

    // determines the amount of fade time textUI will go through
    private float fadeTime;

    // bool to display the info on screen
    // * will probably use AtMachine bool
    private bool displayInfo;

    // AtMachine reference
    private CheckAtMachine checkAtMachine;

    // get the gameobject to reference bool
    [SerializeField]
    private GameObject arcadeMachineTrigger;

	// Use this for initialization
	void Start () {
        checkAtMachine = arcadeMachineTrigger.GetComponent<CheckAtMachine>();

        fadeTime = 10;

        textToDisplay = "Arcade Machine \n Coins to Insert: 3 \n Press B to Begin";
	}
	
	// Update is called once per frame
	void Update () {

        FadeText();
	}

    // takes the textUI and checks display info
    private void FadeText()
    {
        // set the display info to if player is atMachine
        displayInfo = checkAtMachine.AtMachine;

        if (displayInfo)
        {
            textUI.text = textToDisplay;
            textUI.color = Color.Lerp(textUI.color, Color.white, fadeTime * Time.deltaTime);

            imageUI.color = Color.Lerp(textUI.color, Color.white, fadeTime * Time.deltaTime);
        }
        else
            textUI.color = Color.Lerp(textUI.color, Color.clear, fadeTime * Time.deltaTime);

            imageUI.color = Color.Lerp(textUI.color, Color.clear, fadeTime * Time.deltaTime);
    }
}
