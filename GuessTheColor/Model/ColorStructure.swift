//
//  Color.swift
//  GuessTheColor
//
//  Created by YOGESH SONI on 31/08/22.
//

import Foundation

struct ColorStructure {
    let name: String
    let red: Float
    let green: Float
    let blue: Float
    
    init(n: String, r: Float, g: Float, b: Float) {
        name = n
        red = r/255.0
        green = g/255.0
        blue = b/255.0
    }
}
