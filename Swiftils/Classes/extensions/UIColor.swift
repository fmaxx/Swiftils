//
//  UIColor.swift
//  Pods
//
//  Created by Maxim Firsov on 9/10/16.
//
//

import Foundation
import UIKit

extension UIColor{
    convenience init(hex:String) {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
        }
        
        var red:CGFloat = CGFloat()
        var green:CGFloat = CGFloat()
        var blue:CGFloat = CGFloat()
        var alpha:CGFloat = CGFloat()
//        red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat
        
        if ((cString.characters.count) == 6) {
            var rgba:UInt32 = 0
            NSScanner(string: cString).scanHexInt(&rgba)
            
            
            red =   CGFloat((rgba & 0xFF000000) >> 24) / 255.0
            green = CGFloat((rgba & 0x00FF0000) >> 16) / 255.0
            blue =  CGFloat((rgba & 0x0000FF00) >> 8) / 255.0
            alpha = CGFloat( rgba & 0x000000FF) / 255.0

        }
        
        self.init(red: red, green:green, blue:blue, alpha:alpha)
    }
}
