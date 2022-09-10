
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Following code will take user to next screen when difficulty is selected by user.
    @IBAction func difficultyLevelSelected(_ sender: UIButton) {
        performSegue(withIdentifier: "gameScreenSegue", sender: sender)
        
    }
    
}
    



