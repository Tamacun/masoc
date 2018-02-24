//
//  SecondViewController.swift
//  masoc
//
//-- Game Screen -- 
//
//  Created by Li on 12/16/17.
//  Copyright © 2017 Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: Class References
    var level = Level()
    var levelCounter = UserDefaults.standard.integer(forKey: "CurrentLevel")
    
    //MARK: User Defaults
    let defaults = UserDefaults.standard
    
    //MARK: Storyboard generated Variables (Buttons, Labels, Views)
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var redBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    var counter: Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var nextLevel: UIButton!
    @IBOutlet weak var goalIndic: UIView!
    @IBOutlet weak var levelDisplay: UILabel!
    
    
    //MARK: UI Buttons
    @IBAction func resetBtn(_ sender: UIButton) {
        counter = 0
        setUp(level, [blueBtn, redBtn, orangeBtn, greenBtn, yellowBtn, purpleBtn])
    }
    @IBAction func nextLevel(_ sender: UIButton) {
        levelCounter += 1
        setUp(level, [blueBtn, redBtn, orangeBtn, greenBtn, yellowBtn, purpleBtn])
    }

        
    //MARK: Color Arrays
    var blueArray: [UIColor] = []
    var redArray: [UIColor] = []
    var orangeArray: [UIColor] = []
    var greenArray: [UIColor] = []
    var yellowArray: [UIColor] = []
    var purpleArray: [UIColor] = []
    
    
    //MARK: Button Tap Handlers
    @IBAction func blueTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: blueBtn.backgroundColor!, neighborColor: redBtn.backgroundColor!, currentArray: blueArray, neighborArray: redArray)
        blueBtn.backgroundColor = swapColor.nextColor
        redBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    @IBAction func redTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: redBtn.backgroundColor!, neighborColor: orangeBtn.backgroundColor!, currentArray: redArray, neighborArray: orangeArray)
        redBtn.backgroundColor = swapColor.nextColor
        orangeBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    @IBAction func orangeTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: orangeBtn.backgroundColor!, neighborColor: greenBtn.backgroundColor!, currentArray: orangeArray, neighborArray: greenArray)
        orangeBtn.backgroundColor = swapColor.nextColor
        greenBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    @IBAction func greenTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: greenBtn.backgroundColor!, neighborColor: yellowBtn.backgroundColor!, currentArray: greenArray, neighborArray: yellowArray)
        greenBtn.backgroundColor = swapColor.nextColor
        yellowBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    @IBAction func yellowTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: yellowBtn.backgroundColor!, neighborColor: purpleBtn.backgroundColor!, currentArray: yellowArray, neighborArray: purpleArray)
        yellowBtn.backgroundColor = swapColor.nextColor
        purpleBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    @IBAction func purpleTap(_ sender: UIButton) {
        let swapColor = mainSwap(currentColor: purpleBtn.backgroundColor!, neighborColor: blueBtn.backgroundColor!, currentArray: purpleArray, neighborArray: blueArray)
        purpleBtn.backgroundColor = swapColor.nextColor
        blueBtn.backgroundColor = swapColor.nextNeighborColor
        
        //Success Check
        if(successCheck() == true){
            success()
        }
    }
    
    
    //MARK: Set Colors and Shadows
    func setUp(_ d:Level, _ btns:[UIButton]){
        
        //Setup Buttons
        d.changeColors(levelCounter)
        blueBtn.backgroundColor = d.btn1
        redBtn.backgroundColor = d.btn2
        orangeBtn.backgroundColor = d.btn3
        greenBtn.backgroundColor = d.btn4
        yellowBtn.backgroundColor = d.btn5
        purpleBtn.backgroundColor = d.btn6
        
        //Setup Arrays
        blueArray = d.array1
        redArray = d.array2
        orangeArray = d.array3
        greenArray = d.array4
        yellowArray = d.array5
        purpleArray = d.array6
        
        //Misc Setup [Next Level Button, Counter, Goal Indicator, Level Display, High Score]
        nextLevel.isHidden = true
        counter = 0
        goalIndic.backgroundColor = d.goal
        levelDisplay.text = "Level \(levelCounter)"
        
        //Get High Score for this level
        var highScores = defaults.object(forKey: "Level: Score") as! [String: Int]
        var currentHighScore = highScores[String(levelCounter)]
        print(currentHighScore)
        if currentHighScore != nil {
            highScoreLabel.isHidden = false
            highScoreLabel.text = "\(currentHighScore ?? 0)"
        }
        else {
            highScoreLabel.isHidden = true
        }
        print(highScores)
        
        
        
        
        //Set MainView Shadow
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOpacity = 0.3
        mainView.layer.shadowOffset = CGSize(width: 0, height: 8)
        mainView.layer.shadowRadius = 4
        
        
        for btn in btns{
            /*//Set Shadows
            btn.layer.shadowColor = UIColor.black.cgColor
            btn.layer.shadowOpacity = 0.5
            btn.layer.shadowOffset = CGSize(width: 0, height: 10)
            btn.layer.shadowRadius = 4
            btn.layer.shouldRasterize = true */
            //Enable all buttons
            btn.isEnabled = true
        }
    }
    
    //MARK: Main Swap Color Function
    func mainSwap(currentColor:UIColor, neighborColor:UIColor, currentArray:[UIColor], neighborArray:[UIColor]) -> (nextColor: UIColor, nextNeighborColor: UIColor){
        
        var index: Int = currentArray.index(of: currentColor)!
        print("index: \(index)")
        var index2: Int = neighborArray.index(of: neighborColor)!
        print("index2: \(index2)")
        var nextColor: UIColor = UIColor.orange
        var nextNeighborColor: UIColor = UIColor.yellow
        
        //Cycle through the array, get the next value
        if(index >= 0 && index < currentArray.count - 1){
            nextColor = currentArray[index + 1]
        } else {
            index = 0
            nextColor = currentArray[0]
        }
        
        //Cycle through the array, get the next neighbor value
        if(index2 >= 0 && index2 < neighborArray.count - 1){
            nextNeighborColor = neighborArray[index2 + 1]
        } else {
            index2 = 0
            nextNeighborColor = neighborArray[0]
        }
        
        //MARK: Counter Function
        counter += 1
        
        //Pass the new colors back
        return(nextColor, nextNeighborColor)
    }
    
    //MARK: Success Check
    func successCheck() -> Bool {
        if(blueBtn.backgroundColor == goalIndic.backgroundColor && redBtn.backgroundColor == goalIndic.backgroundColor && orangeBtn.backgroundColor == goalIndic.backgroundColor && greenBtn.backgroundColor == goalIndic.backgroundColor && yellowBtn.backgroundColor == goalIndic.backgroundColor && purpleBtn.backgroundColor == goalIndic.backgroundColor){
            return true
        } else {
            print("All of them aren't \(goalIndic) yet")
            return false
        }
    }
    
    //TEST: Making the levelScore Dict a class prop
    var levelScore: [String: Int] = UserDefaults.standard.object(forKey: "Level: Score") as! [String : Int]
    
    //MARK: Success
    func success() {
        blueBtn.isEnabled = false
        redBtn.isEnabled = false
        orangeBtn.isEnabled = false
        greenBtn.isEnabled = false
        yellowBtn.isEnabled = false
        purpleBtn.isEnabled = false
        
        nextLevel.isHidden = false
        
        
        if levelScore[String(levelCounter)]! > counter {
            levelScore[String(levelCounter)] = counter
            defaults.set(levelScore, forKey: "Level: Score")
            print(defaults.object(forKey: "Level: Score"))
        }
    }
    
    //MARK: Easy hacks
    @IBAction func finishLevel(_ sender: Any) {
        blueBtn.backgroundColor = level.goal
        redBtn.backgroundColor = level.goal
        orangeBtn.backgroundColor = level.goal
        greenBtn.backgroundColor = level.goal
        yellowBtn.backgroundColor = level.goal
        purpleBtn.backgroundColor = level.goal
        
        if (successCheck() == true) {
            success()
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp(level, [blueBtn, redBtn, orangeBtn, greenBtn, yellowBtn, purpleBtn])
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
       /* blueBtn.layer.cornerRadius = 0.5 * blueBtn.bounds.size.width
        redBtn.layer.cornerRadius = 0.5 * redBtn.bounds.size.width
        orangeBtn.layer.cornerRadius = 0.5 * orangeBtn.bounds.size.width
        greenBtn.layer.cornerRadius = 0.5 * greenBtn.bounds.size.width
        yellowBtn.layer.cornerRadius = 0.5 * yellowBtn.bounds.size.width
        purpleBtn.layer.cornerRadius = 0.5 * purpleBtn.bounds.size.width */
        
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
