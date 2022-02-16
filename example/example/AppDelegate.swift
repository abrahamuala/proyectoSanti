//
//  AppDelegate.swift
//  example
//
//  Created by Andrés Abraham Bonilla Gómex on 15/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        // navegacion
        // iniciar navigation controller
        let initialController = InitialViewController(nibName: InitialViewController.typeName, bundle: nil)
        let navigationController = UINavigationController(rootViewController: initialController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
    
    //UINavigationController
}
