//
//  HomeViewController.swift
//  Match App
//
//  Created by Tommy Rachmat on 24/04/19.
//  Copyright © 2019 Tommy Rachmat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var nameOfPlayer = ""
    
    @IBOutlet weak var playerNameField: UITextField!
    
    @IBAction func startGame(_ sender: Any) {
        self.nameOfPlayer = playerNameField.text!
        performSegue(withIdentifier: "playerName", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let x = segue.destination as? ViewController
        x?.finalPlayerName = self.nameOfPlayer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
