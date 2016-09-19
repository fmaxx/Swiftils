//
//  UIColor.swift
//  Pods
//
//  Created by Maxim Firsov on 9/10/16.
//
//

import Foundation
import UIKit

public extension UIColor{
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
        
//        print("colors: \(red, green, blue, alpha)")
        
        // result
        self.init(red: red, green:green, blue:blue, alpha:alpha)
    }
    
    public 	func isStrictEqual(color:UIColor) -> Bool {
        if(color == self) {
            return true
        }
        var color_red: CGFloat = 0
        var color_green: CGFloat = 0
        var color_blue: CGFloat = 0
        var color_alpha: CGFloat = 0
        color.getRed(&color_red, green: &color_green, blue: &color_blue, alpha: &color_alpha)
        
        var self_red: CGFloat = 0
        var self_green: CGFloat = 0
        var self_blue: CGFloat = 0
        var self_alpha: CGFloat = 0
        color.getRed(&self_red, green: &self_green, blue: &self_blue, alpha: &self_alpha)
        
        return color_red == self_red && color_green == self_green && color_blue == self_blue && color_alpha == self_alpha
    }
}



