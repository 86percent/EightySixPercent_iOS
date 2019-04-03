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
        
        //initialize the framework
        EPManager.shared.initialize()
        
        //Register a given bot. You have to define here the fetching strategy.
        EPManager.shared.registerBot(uuid: Bots.simple.uuid,
                                     fetchingStrategy: .offline(fileName : Bots.simple.jsonFile))
        
        EPManager.shared.registerBot(uuid: Bots.starwars.uuid,
                                     fetchingStrategy: .offline(fileName : Bots.starwars.jsonFile))

        
        return true
    }


}


