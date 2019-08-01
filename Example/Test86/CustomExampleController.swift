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

class CustomExampleController: UIViewController {

    @IBOutlet weak var validateButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    var sendMessageDisclosure: ((_ messageContent: EPMessageContent) -> Void)?
    
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

}

