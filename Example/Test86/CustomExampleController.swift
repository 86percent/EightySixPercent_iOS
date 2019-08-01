//
//  CustomExampleController.swift
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

class CustomExampleController: UIViewController {

    @IBOutlet weak var validateButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    var sendMessageDisclosure: ((EPMessageContent) -> Void)?
    
    class func controller() -> CustomExampleController {
        let storyboard = UIStoryboard(name: "CustomExample", bundle: nil)
        let identifier = "CustomExampleController"
        let controller = storyboard.instantiateViewController(withIdentifier: identifier) as! CustomExampleController
        return controller
    }
    
    @IBAction func userDidValidate(_ sender: Any) {
        self.sendMessageDisclosure?(EPMessageContent.text(text: "Hello", secured: false))
    }
    
    @IBAction func userDidSkip(_ sender: Any) {
        self.sendMessageDisclosure?(EPMessageContent.skip(text: "Skip message"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

