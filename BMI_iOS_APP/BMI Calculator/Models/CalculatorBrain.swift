import UIKit

// Define a structure for the CalculatorBrain
struct CalculatorBrain {
    
    // Declare a property to store the BMI value
    var bmi: BMI?
    
    // Function to get the BMI value as a string
    func getBMIValue() -> String {
        // Convert BMI value to one decimal place
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    // Function to get the advice based on BMI value
    func getAdvice() -> String {
        // Return the advice associated with the BMI value, or a default message if no advice is available
        return bmi?.advice ?? "No advice"
    }
    
    // Function to get the color associated with BMI value
    func getColor() -> UIColor {
        // Return the color associated with the BMI value, or default white color if no color is available
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    // Function to calculate the BMI value
    mutating func calculateBMI(height: Float, weight: Float) {
        // Calculate BMI using height and weight values
        let bmiValue = weight / (height * height)

        // Determine advice and color based on BMI value ranges
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}

