//
//  RegisterViewController.swift
//  baseDemo
//
//  Created by Azlan Shah on 07/06/2024.
//

import UIKit

class RegisterAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? RegisterProfileViewController {
            target.username = ""
            target.email = ""
            target.phone = ""
            target.password = ""
        }
    }
    @IBAction func gotoRegisterProfile(_ sender: UIButton) {
        performSegue(withIdentifier: "toRegisterProfile" , sender: nil)
    }
    @IBAction func cancel(_ unwindSegue: UIStoryboardSegue) {
//        let sourceViewController = unwindSegue.source
        
    }
}
