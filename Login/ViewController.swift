//
//  ViewController.swift
//  Login
//
//  Created by Thompson, Justin D on 1/15/20.
//  Copyright © 2020 Thompson, Justin D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var showPassSwitch: UISwitch!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUser: UIButton!
    @IBOutlet var forgotPass: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPassSwitched(_ sender: Any) {
        if(showPassSwitch.isOn){
            passwordTextField.isSecureTextEntry = false
        }
        if(showPassSwitch.isOn == false){
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    
    @IBAction func forgotUserAction(_ sender: Any) {
        performSegue(withIdentifier: "LogIn", sender: forgotUser)
    }
    @IBAction func forgotPassAction(_ sender: Any) {
        performSegue(withIdentifier: "LogIn", sender: forgotPass)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        
        if sender == forgotPass {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUser {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
}

