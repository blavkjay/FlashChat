//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by OLAJUWON on 8/14/18.
//  Copyright © 2018 OLAJUWON. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

   
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerPressed(_ sender: AnyObject) {
        
        
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier:"goToChat", sender: self)
            }
        }
        
    }
}
