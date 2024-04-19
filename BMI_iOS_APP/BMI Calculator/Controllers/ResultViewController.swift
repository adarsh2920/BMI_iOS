import UIKit

// Define ResultViewController class
class ResultViewController: UIViewController {
    
    // Declare variables to store BMI value, advice, and color
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    // Outlets to connect UI elements
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // Called after the controller's view is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set BMI value and advice labels
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        // Set background color
        view.backgroundColor = color
    }
    
    // Action triggered when recalculate button is pressed
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Dismiss the ResultViewController
        dismiss(animated: true, completion: nil)
    }
}

