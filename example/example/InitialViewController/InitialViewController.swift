//
//  InitialViewController.swift
//  example
//
//  Created by Andrés Abraham Bonilla Gómex on 15/02/22.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToLogin(_ sender: Any) {
        let loginViewController = LoginViewController(nibName: LoginViewController.typeName, bundle: nil)
        navigationController?.pushViewController(loginViewController, animated: true)
    }
}

public extension UIViewController {
    
    static var typeName: String {
        return String(describing: self)
    }
}
