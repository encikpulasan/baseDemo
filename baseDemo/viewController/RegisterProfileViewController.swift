//
//  RegisterProfileViewController.swift
//  baseDemo
//
//  Created by Azlan Shah on 07/06/2024.
//

import UIKit

class RegisterProfileViewController: UIViewController {

    var username: String?
    var email: String?
    var phone: String?
    var password: String?
    var agreeToTNC: Bool = false
    
    @IBOutlet var progressBar: UIStackView!
    @IBOutlet var fullNameTextField: UITextField!
    @IBOutlet var salaryTextField: UITextField!
    @IBOutlet var salarySlider: UISlider!
    @IBOutlet var houseStepper: UIStepper!
    @IBOutlet var hoouseTextField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var tncSwitch: UISwitch!
    @IBOutlet var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onFlipSwitch(_ sender: UISwitch) {
        if sender.isOn {
            agreeToTNC = true
        }
    }
    @IBAction func onChangeDateTime(_ sender: UIDatePicker) {
    }
    @IBAction func increaseDecreaseHouse(_ sender: UIStepper) {
        hoouseTextField.text = String(format: "%.0f", houseStepper.value)
    }
    @IBAction func onChangeSlider(_ sender: UISlider) {
        salaryTextField.text = String(format: "%.2f", salarySlider.value)
    }
    @IBAction func updateSalaryTextField(_ sender: UITextField) {
        if let salary = Float(salaryTextField.text!) {
            salarySlider.value = salary
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
