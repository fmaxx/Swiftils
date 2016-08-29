//
//  ViewController.swift
//  Swiftils
//
//  Created by fmaxx on 08/29/2016.
//  Copyright (c) 2016 fmaxx. All rights reserved.
//

import UIKit
import Swiftils

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = Math.roundTo(10.4456, decimalPlaces: 2)
        print(" round test \(roundedValue)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

