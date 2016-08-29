//
//  File.swift
//  Pods
//
//  Created by Maxim Firsov on 8/29/16.
//
//

import Foundation

public class Math{
    static public func roundTo(value: Double, decimalPlaces: Int) -> Double {
        let divisor = pow(10.0, Double(decimalPlaces))
        return round(value * divisor) / divisor
    }
}