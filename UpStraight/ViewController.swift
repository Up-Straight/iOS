//
//  ViewController.swift
//  UpStraight
//
//  Created by Stefan Iarca on 27/05/2017.
//  Copyright © 2017 Stefan Iarca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    private func resignTextFields(){
        if usernameTextField.isFirstResponder {
            usernameTextField.resignFirstResponder()
        }
        if passwordTextField.isFirstResponder {
            passwordTextField.resignFirstResponder()
        }
    }
    
    @IBAction func googlePlusButtonTapped(_ sender: UIButton) {
    }
    @IBAction func facebookLoginButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "LoginSegue", sender: nil)
        
    }
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        resignTextFields()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

