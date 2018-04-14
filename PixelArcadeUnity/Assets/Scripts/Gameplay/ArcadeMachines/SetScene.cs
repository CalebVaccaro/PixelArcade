using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Determines what scene to load for each arcade machine
/// </summary>
public class SetScene : MonoBehaviour {

    // determine the scene that the arcade will want to load
    private int scene;

    #region Properties

    public int Scene
    {
        get
        {
            return scene;
        }

        set
        {
            scene = value;
        }
    }

    #endregion

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}