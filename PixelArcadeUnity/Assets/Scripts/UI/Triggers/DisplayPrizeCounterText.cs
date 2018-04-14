using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayPrizeCounterText : MonoBehaviour
{

    // * Displays:
    // * The Input to Press to Access Shop

    // string to be printed on text
    private string textToDisplay;

    // text reference to display onscreen
    [SerializeField]
    private Text textUI;

    // determines the amount of fade time textUI will go through
    private float fadeTime;

    // bool to display the info on screen
    // * will probably use AtMachine bool
    private bool displayInfo;

    // AtMachine reference
    private CheckAtPrizeCounter checkAtPrize;

    // get the gameobject to reference bool
    [SerializeField]
    private GameObject prizeCounterTrigger;

    // Use this for initialization
    void Start()
    {
        checkAtPrize = prizeCounterTrigger.GetComponent<CheckAtPrizeCounter>();

        fadeTime = 10;

        textToDisplay = "Prize Counter \n Press B to Shop";
    }

    // Update is called once per frame
    void Update()
    {
        FadeText();
    }

    // takes the textUI and checks display info
    private void FadeText()
    {
        // set the display info to if player is atMachine
        displayInfo = checkAtPrize.AtCounter;

        if (displayInfo)
        {
            textUI.text = textToDisplay;
            textUI.color = Color.Lerp(textUI.color, Color.white, fadeTime * Time.deltaTime);
        }
        else
            textUI.color = Color.Lerp(textUI.color, Color.clear, fadeTime * Time.deltaTime);
    }
}
