//
//  LoginViewController.swift
//  example
//
//  Created by Andrés Abraham Bonilla Gómex on 15/02/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirstView(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
