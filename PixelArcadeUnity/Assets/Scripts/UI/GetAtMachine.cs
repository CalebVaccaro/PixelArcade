using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Checks if Player is at Machine
/// </summary>
public class GetAtMachine : MonoBehaviour {

    // get accessmachien gameobject
    [SerializeField]
    private GameObject accessMachine;

    // get text trying print
    [SerializeField]
    private Text accessMachineUI;

    // checkatMachine reference
    private CheckAtMachine checkMachine;

	// Use this for initialization
	void Start () {
        checkMachine = accessMachine.GetComponent<CheckAtMachine>();
	}
	
	// Update is called once per frame
	void Update () {
        SetAtMachine();
	}

    // print player atMachine
    private void SetAtMachine()
    {
        accessMachineUI.text = "At Machine: " + checkMachine.AtMachine.ToString();
    }
}
