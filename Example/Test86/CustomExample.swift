//
//  CustomExample.swift
//  Test86
//
//  Created by Olivier Berni on 8/1/19.
//  Copyright © 2019 Glussian. All rights reserved.
//

import Foundation
import UIKit
import EightySixPercent

class CustomExample: EPCustomInputType {
    
    lazy var controller: CustomExampleController = {
        let controller = CustomExampleController.controller()
        return controller
    }()
    
    override func associatedController() -> UIViewController {
        controller.sendMessageDisclosure = { [weak self] message in
            self?.sendClosure?(message, [], nil)
        }
        return UINavigationController(rootViewController: controller)
    }
}

