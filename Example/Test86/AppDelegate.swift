//
//  AppDelegate.swift
//  Test86
//
//  Created by Nicolas DOMINATI on 28/02/2019.
//  Copyright © 2019 Lunabot. All rights reserved.
//

import UIKit
import EightySixPercent

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        EPManager.shared.initialize()
        EPManager.shared.registerBot(uuid: "93F9B90F-5335-4BCB-8EA2-51040458AC7E", fetchingStrategy: .online(majorVersion: nil))
        return true
    }


}


