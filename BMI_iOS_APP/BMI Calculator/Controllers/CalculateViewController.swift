import UIKit

class CalculateViewController: UIViewController {
    
    // Create an instance of CalculatorBrain
    var calculatorBrain = CalculatorBrain()

    // Outlets to connect UI elements
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup after loading the view
    }

    // Action triggered when height slider value changes
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    // Action triggered when weight slider value changes
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    // Action triggered when calculate button is pressed
    @IBAction func calculatePressed(_ sender: UIButton) {
        // Retrieve height and weight values from sliders
        let height = heightSlider.value
        let weight = weightSlider.value

        // Calculate BMI using CalculatorBrain
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // Perform segue to transition to ResultViewController
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // Prepare for segue to pass data to ResultViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            // Pass BMI value, advice, and color to ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

