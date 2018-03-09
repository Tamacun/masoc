//
//  ViewController.swift
//  masoc
//
//-- Home Screen  --
//
//  Created by Li on 12/15/17.
//  Copyright © 2017 Li. All rights reserved.
//

import UIKit

extension CGRect {
    init(_ x:CGFloat, _ y:CGFloat, _ w:CGFloat, _ h:CGFloat) {
        self.init(x:x, y:y, width:w, height:h)
    }
}

extension CGSize {
    init(_ width: CGFloat, _ height:CGFloat) {
        self.init(width:width, height:height)
    }
}


class ViewController: UIViewController {
    
    //MARK: User Defaults
    let defaults = UserDefaults.standard
    
    //MARK: Check Level and HighScore
    func initLevel() {
        if defaults.integer(forKey: "CurrentLevel") < 1 {
            defaults.set(1, forKey: "CurrentLevel")
        }
        if defaults.object(forKey: "Level: Score") == nil {
            let levelScore: [String: Int] = ["One": 0]
            defaults.set(levelScore, forKey: "Level: Score")
            print(defaults.object(forKey: "Level: Score"))
        }
    }
    
    //MARK: Play Button
    @IBOutlet weak var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initLevel()
        print("The current Hisgh Scores are \(defaults.object(forKey: "Level: Score"))")
        print("The current level is \(defaults.integer(forKey: "CurrentLevel"))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }


}

