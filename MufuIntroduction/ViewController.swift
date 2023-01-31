//
//  ViewController.swift
//  MufuIntroduction
//
//  Created by Mufu Tebit on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var academicYearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numPetsLabel: UILabel!
    @IBOutlet weak var numPetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceDidTapped(_ sender: UIButton) {
            
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = academicYearSegmentedControl.titleForSegment(at: academicYearSegmentedControl.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        var doIWantPets = ""
        if(morePetsSwitch.isOn){
            doIWantPets = " I definitely do want to own more pets in the future!"
        }
        else{
            doIWantPets = " I'd prefer not to own any more pets in the future."
        }
        
        var howManyDogs = ""
        if(numPetsLabel.text == "0"){
            howManyDogs = "no dogs."
        }
        else{
            howManyDogs = "\(numPetsLabel.text!) dogs."
        }
            let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own " + howManyDogs + doIWantPets
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

