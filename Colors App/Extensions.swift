//
//  Extensions.swift
//  Colors App
//
//  Created by Amr El-Fiqi on 28/08/2024.
//
import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1.0), green: CGFloat.random(in: 0...1.0), blue: CGFloat.random(in: 0...1.0), alpha: 1)
        return randomColor
    }
}
