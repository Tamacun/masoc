//
//  FirstViewController.swift
//  masoc
//
//-- Level Select --
//
//  Created by Li on 2/23/18.
//  Copyright © 2018 Li. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    //MARK: User Defaults
    lazy var currentLevel = defaults.integer(forKey: "CurrentLevel")
    
    //MARK: Level Select Buttons
    @IBAction func btn1(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn1)
    }
    
    @IBAction func btn2(_ sender: Any) {
    }
    
    @IBAction func btn3(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
