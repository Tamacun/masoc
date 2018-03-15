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
    
    //MARK: Level Select Button Outlets
    @IBOutlet weak var btn1Outlet: UIButton!
    @IBOutlet weak var btn2Outlet: UIButton!
    @IBOutlet weak var btn3Outlet: UIButton!
    @IBOutlet weak var btn4Outlet: UIButton!
    @IBOutlet weak var btn5Outlet: UIButton!
    @IBOutlet weak var btn6Outlet: UIButton!
    @IBOutlet weak var btn7Outlet: UIButton!
    @IBOutlet weak var btn8Outlet: UIButton!
    @IBOutlet weak var btn9Outlet: UIButton!
    
    //MARK: Level Select Buttons functions
    @IBAction func btn1(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn1)
    }
    
    @IBAction func btn2(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn2)
    }
    
    @IBAction func btn3(_ sender: Any) {
        
        performSegue(withIdentifier:  "startGame", sender: btn3)
    }
    
    @IBAction func btn4(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn4)
    }
    
    @IBAction func btn5(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn5)
    }
    
    @IBAction func btn6(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn6)
    }
    
    @IBAction func btn7(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn7)
    }
    
    @IBAction func btn8(_ sender: Any) {
        
        performSegue(withIdentifier: "startGame", sender: btn8)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let doneImage = UIImage(named: "done-black") as UIImage?
        let btnArray: [UIButton] = [btn1Outlet, btn2Outlet, btn3Outlet, btn4Outlet, btn5Outlet, btn6Outlet, btn7Outlet, btn8Outlet, btn9Outlet]
        
        switch currentLevel {
        
        case 0...19:
            for i in 1...8 {
                btnArray[i].isEnabled = false
            }
            
        case 20...29:
            btn1Outlet.setImage(doneImage, for: .normal)
            
            for i in 2...8 {
                btnArray[i].isEnabled = false
            }
            
            
        case 30...39:
            btn1Outlet.setImage(doneImage, for: .normal)
            btn2Outlet.setImage(doneImage, for: .normal)
            
            for i in 2...8 {
                btnArray[i].isEnabled = false
            }
            
        case 40...49:
            btn1Outlet.setImage(doneImage, for: .normal)
            btn2Outlet.setImage(doneImage, for: .normal)
            btn3Outlet.setImage(doneImage, for: .normal)
            
            for i in 3...8 {
                btnArray[i].isEnabled = false
            }
            
        default:
            print("You broke it")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
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
