//
//  ViewController.swift
//  masoc
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


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mainview = self.view!
        let v1 = UIView(frame:CGRect(50, 200, 350, 800))
        v1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        mainview.addSubview(v1)
        v1.transform = CGAffineTransform(rotationAngle:55 * .pi/180)
        mainview.backgroundColor = UIColor(red:0.45, green:0.67, blue:0.70, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

