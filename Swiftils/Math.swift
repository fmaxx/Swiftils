//
//  Math.swift
//  Swiftils
//
//  Created by Maxim Firsov on 21/08/16.
//  Copyright © 2016 DigitalKickstart. All rights reserved.
//

import Foundation

public class Math {
    static func round(value:Double, precision:uint = 1) -> Double {
        let d = pow(10.0, Double(precision))
        return round(value * d) / d
    }
    
    static func round(value:Float, precision:uint = 1) -> Float {
        let d = Float(pow(10.0, Double(precision)))
        return round(value * d) / d
    }
}
