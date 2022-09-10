// //Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
//  gameContoller.swift
//  GuessTheColor
//
//  Created by YOGESH SONI on 28/08/22.
//

import Foundation
import UIKit
class GameViewController: UIViewController {
    // To get hold of labels
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tapOnLabel: UILabel!
    
    // To get hold and change Button Properties
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    var colorDetails = ColorDetails()  // Instance of structure Colordetails is being created here.
    var score: Int = 0
    var j: Int = 0
    var questionCount: Int = 0 // Maximum 10 questions will be asked.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColors()
        
    }
    
    @IBAction func colorSelected(_ sender: UIButton) {
        
        if sender.tag == j {
            score += 1
            scoreLabel.text = "Score: \(score)/10"
        }
        
        if questionCount <= 10 {
            updateColors()
        }
        else {
            performSegue(withIdentifier: "finalScoreViewController", sender: sender)
        }
    }
  
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "finalScoreViewController" {
            let destinationVC = segue.destination as! FinalScoreViewController
             destinationVC.finalScore = getScore() //finalScore is string variable in FinalScoreViewController
            }
            
        }
 
//MARK: updateColors()
    func updateColors() {
        
        // This function will call getValue function in colordetails and map its output in mentioned variables and assign background colors to all four buttons.
        
        let ((r0, g0, b0,r1, g1, b1, r2, g2, b2, r3, g3, b3, i)) = colorDetails.getValue()
        
        firstButton.backgroundColor = UIColor(red: r0, green: g0, blue: b0, alpha: 1.0)
        secondButton.backgroundColor = UIColor(red: r1, green: g1, blue: b1, alpha: 1.0)
        thirdButton.backgroundColor = UIColor(red: r2, green: g2, blue: b2, alpha: 1.0)
        fourthButton.backgroundColor = UIColor(red: r3, green: g3, blue: b3, alpha: 1.0)
        
        //Main function of j is to ask random colorName from all colorBoxes, otherwise it will ask colorname from same box.
        j = Int.random(in: 0 ... 3)
        let colorName = colorDetails.colors[i+j].name
        tapOnLabel.text = "Tap on \(colorName) Color"
        
        questionCount += 1 // Whenever updatecolors() is called questionCount will be in cremented.
        
    }
//MARK: getScore()
    
    
    func getScore() -> String {
        let finalScore: String = "\(score)"
        return finalScore
    }
    
}



