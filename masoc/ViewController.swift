//
//  ViewController.swift
//  masoc
//
//  Created by Li on 12/15/17.
//  Copyright © 2017 Li. All rights reserved.
//

import UIKit

//Map UIColors to strings


//Put nextColor function as extension of UIColor


class ViewController: UIViewController {
    
    func startingSetup() {
        blueBtn.backgroundColor = UIColor.blue
        redBtn.backgroundColor = UIColor.red
        orangeBtn.backgroundColor = UIColor.orange
        greenBtn.backgroundColor = UIColor.green
        yellowBtn.backgroundColor = UIColor.yellow
        purpleBtn.backgroundColor = UIColor.purple
        blueBtn.isEnabled = true
        redBtn.isEnabled = true
        orangeBtn.isEnabled = true
        greenBtn.isEnabled = true
        yellowBtn.isEnabled = true
        purpleBtn.isEnabled = true
        movesLabel.text = "Moves"
    }
    
    //MARK: Low score

    //MARK: Variable assignment
        //Buttons
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var redBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
        //Counter
    @IBOutlet weak var movesLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    var counter: Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
        //Reset
    @IBAction func reset(_ sender: UIButton) {
        counter = 0
        startingSetup()
    }
    
    //MARK: Color Arrays
    let blueArray = [UIColor.blue, UIColor.green, UIColor.yellow, UIColor.red, UIColor.purple, UIColor.orange]
    let redArray = [UIColor.red, UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple,
        UIColor.yellow]
    let orangeArray = [UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple, UIColor.yellow, UIColor.red]
    let greenArray = [UIColor.green, UIColor.purple, UIColor.yellow, UIColor.orange, UIColor.blue, UIColor.red]
    let yellowArray = [UIColor.yellow, UIColor.blue, UIColor.purple, UIColor.red, UIColor.orange, UIColor.green]
    let purpleArray = [UIColor.purple, UIColor.red, UIColor.orange, UIColor.green, UIColor.blue, UIColor.yellow]
    var currentArray = [UIColor]()
    var neighborArray = [UIColor]()
    
    //MARK: Button Functions
    @IBAction func blueTap(_ sender: UIButton) {
        let currentColor: UIColor = blueBtn.backgroundColor!
        let neighborColor: UIColor = redBtn.backgroundColor!
        currentArray = blueArray
        neighborArray = redArray
        
        //variable dump
        print(currentArray, neighborArray, currentColor, neighborColor)
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray: currentArray, neighborArray: neighborArray)
        blueBtn.backgroundColor = swapColor.nextColor
        redBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            movesLabel.text = "Success!"
        }
    }
    
    @IBAction func redTap(_ sender: UIButton) {
        let currentColor: UIColor = redBtn.backgroundColor!
        let neighborColor: UIColor = orangeBtn.backgroundColor!
        currentArray = redArray
        neighborArray = orangeArray
        
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray:currentArray, neighborArray: neighborArray)
        redBtn.backgroundColor = swapColor.nextColor
        orangeBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            counterLabel.text = "Success"
        }
    }
    
    @IBAction func orangeTap(_ sender: UIButton) {
        let currentColor: UIColor = orangeBtn.backgroundColor!
        let neighborColor: UIColor = greenBtn.backgroundColor!
        currentArray = orangeArray
        neighborArray = greenArray
        
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray: currentArray, neighborArray: neighborArray)
        orangeBtn.backgroundColor = swapColor.nextColor
        greenBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            counterLabel.text = "Success"
        }
    }
    
    @IBAction func greenTap(_ sender: UIButton) {
        let currentColor: UIColor = greenBtn.backgroundColor!
        let neighborColor: UIColor = yellowBtn.backgroundColor!
        currentArray = greenArray
        neighborArray = yellowArray
        
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray: currentArray, neighborArray: neighborArray)
        greenBtn.backgroundColor = swapColor.nextColor
        yellowBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            counterLabel.text = "Success"
        }
    }
    
    @IBAction func yellowTap(_ sender: UIButton) {
        let currentColor: UIColor = yellowBtn.backgroundColor!
        let neighborColor: UIColor = purpleBtn.backgroundColor!
        currentArray = yellowArray
        neighborArray = purpleArray
        
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray: currentArray, neighborArray: neighborArray)
        yellowBtn.backgroundColor = swapColor.nextColor
        purpleBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            counterLabel.text = "Success"
        }
    }
    
    @IBAction func purpleTap(_ sender: UIButton) {
        let currentColor: UIColor = purpleBtn.backgroundColor!
        let neighborColor: UIColor = blueBtn.backgroundColor!
        currentArray = purpleArray
        neighborArray = blueArray
        
        let swapColor = mainSwap(currentColor: currentColor, neighborColor: neighborColor, currentArray: currentArray, neighborArray: neighborArray)
        purpleBtn.backgroundColor = swapColor.nextColor
        blueBtn.backgroundColor = swapColor.nextNeighborColor
        if(successCheck() == true){
            counterLabel.text = "Success"
        }
    }
    
    
    //MARK: Main Function onTap
    func mainSwap(currentColor:UIColor, neighborColor:UIColor, currentArray:[UIColor], neighborArray:[UIColor]) -> (nextColor: UIColor, nextNeighborColor: UIColor){
        
        //Parameter dump
        print("current Color: \(currentColor) neighbor Color: \(neighborColor)")
        print("currentArray: \(currentArray) neighbor array: \(neighborArray)")
        
        var index: Int = currentArray.index(of: currentColor)!
        print("index: \(index)")
        var index2: Int = neighborArray.index(of: neighborColor)!
        print("index2: \(index2)")
        var nextColor: UIColor = UIColor.orange
        var nextNeighborColor: UIColor = UIColor.yellow
        
        //Cycle through the array, get the next value
        if(index >= 0 && index < currentArray.count - 1){
            nextColor = currentArray[index + 1]
            print("This code has ran \(nextColor)")
        } else {
            index = 0
            nextColor = currentArray[0]
            print("This failed to run")
        }
        
        //Cycle through the array, get the next neighbor value
        if(index2 >= 0 && index2 < neighborArray.count - 1){
            nextNeighborColor = neighborArray[index2 + 1]
            print("This has also ran \(nextNeighborColor)")
        } else {
            index2 = 0
            nextNeighborColor = neighborArray[0]
        }
        
        //MARK: Counter Function
        counter += 1
        
        //Pass the new colors back
        print("THis has set the next color to: \(nextColor) and neighbor color to \(nextNeighborColor)")
        return(nextColor, nextNeighborColor)
    }
    
    //MARK: Success Check
    func successCheck() -> Bool {
        let btn1: UIColor = blueBtn.backgroundColor!
        let btn2: UIColor = redBtn.backgroundColor!
        let btn3: UIColor = orangeBtn.backgroundColor!
        let btn4: UIColor = greenBtn.backgroundColor!
        let btn5: UIColor = yellowBtn.backgroundColor!
        let btn6: UIColor = purpleBtn.backgroundColor!
        
        if(btn1 == btn2 && btn2 == btn3 && btn3 == btn4 && btn4 == btn5 && btn5 == btn6){
            blueBtn.isEnabled = false
            redBtn.isEnabled = false
            orangeBtn.isEnabled = false
            greenBtn.isEnabled = false
            yellowBtn.isEnabled = false
            purpleBtn.isEnabled = false
           return true
        }
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startingSetup()
        
        //MARK: Background View Testing
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

