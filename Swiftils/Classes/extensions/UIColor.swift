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
        
        // trim empty spaces
        var trimmed:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        // find "#" symbol
        if (trimmed.hasPrefix("#")) {
            trimmed = trimmed.substringFromIndex(trimmed.startIndex.advancedBy(1))
        }
        
        // base colors vars
        var red:CGFloat = CGFloat()
        var green:CGFloat = CGFloat()
        var blue:CGFloat = CGFloat()
        var alpha:CGFloat = CGFloat()
        
        // extract colors from string
        if ((trimmed.characters.count) >= 6) {
            var rgba:UInt32 = 0
            NSScanner(string: trimmed).scanHexInt(&rgba)
            red =   CGFloat((rgba & 0xFF000000) >> 24) / 255.0
            green = CGFloat((rgba & 0x00FF0000) >> 16) / 255.0
            blue =  CGFloat((rgba & 0x0000FF00) >> 8) / 255.0
            alpha = CGFloat( rgba & 0x000000FF) / 255.0
        }
        
        // result
        self.init(red: red, green:green, blue:blue, alpha:alpha)
    }
}
