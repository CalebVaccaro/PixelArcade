using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Manager for Loading in Scenes
/// </summary>
public class AnyManager : MonoBehaviour {

    // * Additive Scene Loading is our Main Goal
    // * If we need to unload scene we shall be able to do that too

    // call scene manager
    public static AnyManager manager;

    // check whether game has started or not
    private bool gameStart;

    #region Properties

    public AnyManager Manager
    {
        get
        {
            return manager;
        }

        set
        {
            manager = value;
        }
    }

    #endregion

    // Use this for initialization
    void Awake () {
        // check if game has started or not
        if (!gameStart)
        {
            manager = this;

            // load scene as an additive
            SceneManager.LoadSceneAsync(1, LoadSceneMode.Additive);

            gameStart = true;
        }
	}
	
    /// <summary>
    /// Unload Scene when needed
    /// </summary>
    /// <param name="scene"></param>
	public void UnloadScene(int scene)
    {
        StartCoroutine(Unload(scene));
    }

    IEnumerator Unload(int scene)
    {

        //SceneManager.UnloadScene(scene);

        yield return null;     
    }
}
