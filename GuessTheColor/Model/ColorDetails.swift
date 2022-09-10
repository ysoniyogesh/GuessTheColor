//
//  ColorDetails.swift
//  GuessTheColor
//
//  Created by YOGESH SONI on 31/08/22.
//

import Foundation
import UIKit
struct ColorDetails {
    let colors = [
         ColorStructure(n: "Forest green", r: 34.0, g: 139.0, b: 34.0),
         ColorStructure(n: "Red", r: 255.0, g: 0.0, b: 0.0),
         ColorStructure(n: "Magenta", r: 255.0, g: 0.0, b: 255.0),
         ColorStructure(n: "Turquoise", r: 64.0, g: 224.0, b: 208.0),
         ColorStructure(n: "Maroon", r: 128, g: 0.0, b: 0.0),
         ColorStructure(n: "Gold", r: 255.0, g: 215.0, b: 0.0),
         ColorStructure(n: "Olive", r: 128.0, g: 128.0, b: 0.0),
         ColorStructure(n: "Sea Green", r: 46.0, g: 139.0, b: 87.0),
         ColorStructure(n: "Aqua", r: 0.0, g: 255.0, b: 255.0),
         ColorStructure(n: "Medium blue", r: 0.0, g: 0.0, b: 205.0),
         ColorStructure(n: "deep pink", r: 255.0, g: 20.0, b: 147.0), // 10th color
         ColorStructure(n: "antique white", r: 250.0, g: 235.0, b: 215.0),
         ColorStructure(n: "chocolate", r: 210.0, g: 105.0, b: 30.0),
         ColorStructure(n: "aqua marine", r: 127.0, g: 255.0, b: 212.0),
         ColorStructure(n: "midnight blue", r: 25.0, g: 25.0, b: 112.0),
         ColorStructure(n: "crimson", r: 220.0, g: 20.0, b: 60.0),
         ColorStructure(n: "tomato", r: 255.0, g: 99.0, b: 71.0),
         ColorStructure(n: "coral", r: 255.0, g: 127.0, b: 80.0),
         ColorStructure(n: "orange red", r: 255.0, g: 69.0, b: 0.0),
         ColorStructure(n: "lime", r: 0.0, g: 255.0, b: 0.0),
         ColorStructure(n: "purple", r: 128.0, g: 0.0, b: 128.0),
         ColorStructure(n: "firebrick", r: 178.0, g: 34.0, b: 34.0)
         
         
    ]
    var colornumber  = 0

    mutating func getValue() -> (CGFloat, CGFloat, CGFloat,CGFloat, CGFloat, CGFloat,CGFloat, CGFloat, CGFloat,CGFloat, CGFloat, CGFloat, Int) {
        var r0, g0, b0,r1, g1, b1, r2, g2, b2, r3, g3, b3: CGFloat

        let i: Int = Int.random(in: 0 ..< 18)
        
     
        r0 = CGFloat(colors[i].red)
        g0 = CGFloat(colors[i].green)
        b0 = CGFloat(colors[i].blue)
  
        r1 = CGFloat(colors[i+1].red)
        g1 = CGFloat(colors[i+1].green)
        b1 = CGFloat(colors[i+1].blue)
        
        r2 = CGFloat(colors[i+2].red)
        g2 = CGFloat(colors[i+2].green)
        b2 = CGFloat(colors[i+2].blue)

        r3 = CGFloat(colors[i+3].red)
        g3 = CGFloat(colors[i+3].green)
        b3 = CGFloat(colors[i+3].blue)
 
        return(r0, g0, b0,r1, g1, b1, r2, g2, b2, r3, g3, b3, i)
    }
    

}
