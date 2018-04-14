using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GetAtCounter : MonoBehaviour {

    // get accessPrizeCounter gameobject
    [SerializeField]
    private GameObject accessCounter;

    // get text trying print
    [SerializeField]
    private Text accessCounterUI;

    // checkatPrizeCounter reference
    private CheckAtPrizeCounter checkCounter;

    // Use this for initialization
    void Start()
    {
        checkCounter = accessCounter.GetComponent<CheckAtPrizeCounter>();
    }

    // Update is called once per frame
    void Update()
    {
        SetAtCounter();
    }

    // print player atMachine
    private void SetAtCounter()
    {
        accessCounterUI.text = "At Counter: " + checkCounter.AtCounter.ToString();
    }
}
