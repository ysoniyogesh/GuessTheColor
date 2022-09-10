//
//  FinalScorevVewController.swift
//  GuessTheColor
//
//  Created by YOGESH SONI on 05/09/22.
//

import Foundation
import UIKit


class FinalScoreViewController : UIViewController {
    var finalScore: String = ""
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    override func viewDidLoad() {
        finalScoreLabel.text = "Your Score: \(finalScore)"
        
    }
}
