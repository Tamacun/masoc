//
//  Levels.swift
//  masoc
//
//  Created by Li on 2/6/18.
//  Copyright © 2018 Li. All rights reserved.
//

import Foundation
import UIKit

class Level {
    struct One {
        var btn1 = UIColor.blue
        var btn2 = UIColor.red
        var btn3 = UIColor.orange
        var btn4 = UIColor.green
        var btn5 = UIColor.yellow
        var btn6 = UIColor.purple
        
        let btnOneArray = [UIColor.blue, UIColor.green, UIColor.yellow, UIColor.red, UIColor.purple, UIColor.orange]
        let btnTwoArray = [UIColor.red, UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple,
                        UIColor.yellow]
        let btnThreeArray = [UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple, UIColor.yellow, UIColor.red]
        let btnFourArray = [UIColor.green, UIColor.purple, UIColor.yellow, UIColor.orange, UIColor.blue, UIColor.red]
        let btnFiveArray = [UIColor.yellow, UIColor.blue, UIColor.purple, UIColor.red, UIColor.orange, UIColor.green]
        let btnSixArray = [UIColor.purple, UIColor.red, UIColor.orange, UIColor.green, UIColor.blue, UIColor.yellow]
        
        let goal: String = "Set all buttons to Yellow"
    }

    struct Two {
        var btn1 = UIColor.red
        var btn2 = UIColor.red
        var btn3 = UIColor.red
        var btn4 = UIColor.red
        var btn5 = UIColor.yellow
        var btn6 = UIColor.purple
        
        let btnOneArray = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.purple, UIColor.red, UIColor.orange]
        let btnTwoArray = [UIColor.red, UIColor.yellow, UIColor.blue, UIColor.purple, UIColor.green,
                        UIColor.orange]
        let btnThreeArray = [UIColor.orange, UIColor.yellow, UIColor.green, UIColor.red, UIColor.blue, UIColor.purple]
        let btnFourArray = [UIColor.green, UIColor.purple, UIColor.yellow, UIColor.orange, UIColor.blue, UIColor.red]
        let btnFiveArray = [UIColor.yellow, UIColor.red, UIColor.green, UIColor.blue, UIColor.orange, UIColor.purple]
        let btnSixArray = [UIColor.purple, UIColor.red, UIColor.orange, UIColor.green, UIColor.blue, UIColor.yellow]
        
        let goal: String = "Set all buttons to Red"
        
    }

}
