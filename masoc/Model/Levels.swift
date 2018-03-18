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
    var btn1: UIColor = .blue
    var btn2: UIColor = .red
    var btn3: UIColor = .orange
    var btn4: UIColor = .green
    var btn5: UIColor = .yellow
    var btn6: UIColor = .purple
    
    var array1: [UIColor] = [.blue, .red, .orange, .purple, .green, .yellow]
    var array2: [UIColor] = [.red, .orange, .blue, .yellow, .purple, .green]
    var array3: [UIColor] = [.orange, .green, .orange, .purple, .yellow, .blue]
    var array4: [UIColor] = [.green, .orange, .blue, .purple, .yellow, .red]
    var array5: [UIColor] = [.yellow, .purple, .red, .orange, .green, .purple]
    var array6: [UIColor] = [.purple, .red, .blue, .orange, .yellow, .green]
    
    var goal: UIColor = .yellow
    
    func changeColors(_ levelNumber: Int) {
        switch levelNumber {
        case 1:
            self.btn1 = .blue
            self.btn2 = .blue
            self.btn3 = .blue
            self.btn4 = .blue
            self.btn5 = .yellow
            self.btn6 = .purple
            
            self.array1 = [.blue, .red, .orange, .purple, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .blue, .red, .green, .orange, .purple]
            self.array6 = [.purple, .blue, .red, .orange, .green, .yellow]
            
            self.goal = .blue
            
        case 2:
            self.btn1 = .red
            self.btn2 = .red
            self.btn3 = .red
            self.btn4 = .yellow
            self.btn5 = .yellow
            self.btn6 = .red
            
            self.array1 = [.blue, .red, .orange, .purple, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .red, .blue, .green, .orange, .purple]
            self.array6 = [.purple, .red, .blue, .orange, .green, .yellow]
            
            self.goal = .red
            
        case 3:
            self.btn1 = .black
            self.btn2 = .black
            self.btn3 = .red
            self.btn4 = .red
            self.btn5 = .yellow
            self.btn6 = .yellow
            
            self.array1 = [.blue, .black, .yellow, .red, .green, .orange]
            self.array2 = [.black, .yellow, .blue, .orange, .red, .green]
            self.array3 = [.orange, .green, .black, .red, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .red, .yellow, .black]
            self.array5 = [.yellow, .red, .blue, .black, .orange, .purple]
            self.array6 = [.red, .black, .blue, .orange, .green, .yellow]
            
            self.goal = .yellow
            
        case 4:
            self.btn1 = .red
            self.btn2 = .red
            self.btn3 = .yellow
            self.btn4 = .yellow
            self.btn5 = .red
            self.btn6 = .red
            
            self.array1 = [.red, .blue, .orange, .purple, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .blue, .yellow]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .blue, .orange, .green]
            self.array6 = [.purple, .red, .blue, .orange, .green, .yellow]
            
            self.goal = .blue
            
        case 5:
            self.btn1 = .blue
            self.btn2 = .blue
            self.btn3 = .yellow
            self.btn4 = .yellow
            self.btn5 = .blue
            self.btn6 = .blue
            
            self.array1 = [.blue, .red, .orange, .blue, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .green, .orange, .blue]
            self.array6 = [.purple, .red, .blue, .orange, .green, .yellow]
            
            self.goal = .blue
        
        case 6:
            self.btn1 = .yellow
            self.btn2 = .green
            self.btn3 = .orange
            self.btn4 = .green
            self.btn5 = .green
            self.btn6 = .green
            
            self.array1 = [.blue, .red, .orange, .purple, .yellow, .green]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .green, .orange, .purple]
            self.array6 = [.purple, .red, .blue, .orange, .green, .yellow]
        
            self.goal = .green
            
        case 7:
            self.btn1 = .yellow
            self.btn2 = .yellow
            self.btn3 = .blue
            self.btn4 = .blue
            self.btn5 = .red
            self.btn6 = .red
            
            self.array1 = [.blue, .red, .orange, .purple, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .blue, .orange, .purple]
            self.array6 = [.yellow, .red, .blue, .orange, .purple, .green]
            
            self.goal = .purple
            
        case 8:
            self.btn1 = .yellow
            self.btn2 = .yellow
            self.btn3 = .orange
            self.btn4 = .orange
            self.btn5 = .orange
            self.btn6 = .orange
            
            self.array1 = [.blue, .red, .orange, .purple, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .blue, .orange, .green]
            self.array6 = [.purple, .orange, .red, .blue, .yellow, .green]
            
            self.goal = .red
            
        case 9:
            self.btn1 = .purple
            self.btn2 = .purple
            self.btn3 = .purple
            self.btn4 = .purple
            self.btn5 = .purple
            self.btn6 = .blue
            
            self.array1 = [.purple, .red, .orange, .blue, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .red, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .blue, .red, .green, .orange, .purple]
            self.array6 = [.purple, .red, .blue, .orange, .green, .yellow]
            
            self.goal = .red
            
        case 10:
            self.btn1 = .orange
            self.btn2 = .orange
            self.btn3 = .blue
            self.btn4 = .orange
            self.btn5 = .orange
            self.btn6 = .red
            
            self.array1 = [.blue, .red, .orange, .blue, .green, .yellow]
            self.array2 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array3 = [.orange, .green, .orange, .purple, .yellow, .blue]
            self.array4 = [.green, .orange, .blue, .purple, .yellow, .red]
            self.array5 = [.yellow, .purple, .red, .green, .orange, .purple]
            self.array6 = [.purple, .red, .blue, .orange, .yellow, .green]
            
            self.goal = .orange
            
        case 11:
            self.btn1 = .red
            self.btn2 = .blue
            self.btn3 = .red
            self.btn4 = .red
            self.btn5 = .red
            self.btn6 = .red
            
            self.array1 = [.red, .yellow, .blue, .orange, .purple, .green]
            self.array2 = [.blue, .orange, .red, .yellow, .purple, .green]
            self.array3 = [.red, .blue, .orange, .yellow, .purple, .green]
            self.array4 = [.red, .orange, .blue, .yellow, .purple, .green]
            self.array5 = [.red, .purple, .orange, .blue, .yellow, .green]
            self.array6 = [.red, .orange, .yellow, .green, .purple, .blue]
            
            self.goal = .green
            
        default:
            print("Love you baby")
        }
    }
}
