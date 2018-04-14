using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GetEntity : MonoBehaviour {

    // get accessmachien gameobject
    [SerializeField]
    private GameObject gm;

    // get text trying print
    [SerializeField]
    private Text playerEntityUI;

    // checkatMachine reference
    private CheckEntityAccess checkEntity;

    // Use this for initialization
    void Start()
    {
        checkEntity = gm.GetComponent<CheckEntityAccess>();
    }

    // Update is called once per frame
    void Update()
    {
        ShowEntityAccess();
    }

    // print player atMachine
    private void ShowEntityAccess()
    {
        playerEntityUI.text = "EntityAccess : " + checkEntity.EntityAccess.ToString();
    }
}
