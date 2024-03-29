//
//  AppDelegate.swift
//  MyVibe
//
//  Created by Piotr Torczyński on 26/10/2017.
//  Copyright © 2017 SmartApps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    /// Application window
    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
    
    /// The application's dependencies.
    private let applicationDependencies = DefaultApplicationDependenciesProvider()
    
    private lazy var applicationController = ApplicationController(dependencies: self.applicationDependencies)
    
    // MARK: Delegate methods
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window!.rootViewController = applicationController.rootViewController
        window!.makeKeyAndVisible()
        return true
    }
}
