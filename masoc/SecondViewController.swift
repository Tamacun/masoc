//
//  SecondViewController.swift
//  masoc
//
//  Created by Li on 12/16/17.
//  Copyright © 2017 Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: Variables
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
    @IBOutlet weak var mainView: UIView!
    
    
    //MARK: UI Buttons
    @IBAction func resetBtn(_ sender: UIButton) {
        counter = 0
        setUp(btns: [blueBtn, redBtn, orangeBtn, greenBtn, yellowBtn, purpleBtn])
    }
    
    
    //MARK: Color Arrays
    let blueArray = [UIColor.blue, UIColor.green, UIColor.yellow, UIColor.red, UIColor.purple, UIColor.orange]
    let redArray = [UIColor.red, UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple,
                    UIColor.yellow]
    let orangeArray = [UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple, UIColor.yellow, UIColor.red]
    let greenArray = [UIColor.green, UIColor.purple, UIColor.yellow, UIColor.orange, UIColor.blue, UIColor.red]
    let yellowArray = [UIColor.yellow, UIColor.blue, UIColor.purple, UIColor.red, UIColor.orange, UIColor.green]
    let purpleArray = [UIColor.purple, UIColor.red, UIColor.orange, UIColor.green, UIColor.blue, UIColor.yellow]
    
    //MARK: Button Tap Handlers
    @IBAction func btnTap(_ sender: UIButton) {
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
    func setUp(btns:[UIButton]){
        blueBtn.backgroundColor = UIColor.blue
        redBtn.backgroundColor = UIColor.red
        orangeBtn.backgroundColor = UIColor.orange
        greenBtn.backgroundColor = UIColor.green
        yellowBtn.backgroundColor = UIColor.yellow
        purpleBtn.backgroundColor = UIColor.purple
        
        //Set MainView Shadow
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOpacity = 0.3
        mainView.layer.shadowOffset = CGSize(width: 0, height: 8)
        mainView.layer.shadowRadius = 4
        
        
        for btn in btns{
            //Set Shadows
            btn.layer.shadowColor = UIColor.black.cgColor
            btn.layer.shadowOpacity = 0.5
            btn.layer.shadowOffset = CGSize(width: 0, height: 10)
            btn.layer.shadowRadius = 4
            btn.layer.shouldRasterize = true
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
        if(blueBtn.backgroundColor == redBtn.backgroundColor && redBtn.backgroundColor == orangeBtn
            .backgroundColor && orangeBtn.backgroundColor == greenBtn.backgroundColor && greenBtn.backgroundColor == yellowBtn.backgroundColor && yellowBtn.backgroundColor == purpleBtn.backgroundColor){
            return true
        } else {
            return false
        }
    }
    
    //MARK: Success
    func success() {
        blueBtn.isEnabled = false
        redBtn.isEnabled = false
        orangeBtn.isEnabled = false
        greenBtn.isEnabled = false
        yellowBtn.isEnabled = false
        purpleBtn.isEnabled = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp(btns: [blueBtn, redBtn, orangeBtn, greenBtn, yellowBtn, purpleBtn])
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
