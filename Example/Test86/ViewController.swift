//
//  ViewController.swift
//  Test86
//
//  Created by Nicolas DOMINATI on 28/02/2019.
//  Copyright © 2019 Lunabot. All rights reserved.
//

import UIKit
import EightySixPercent
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        HUD.show(.progress)
        let conversation = EPChatConversation(botUuid: "93F9B90F-5335-4BCB-8EA2-51040458AC7E")
        EPManager.shared.controller(for: conversation) { controller, error in
            HUD.hide()
            if let controller = controller {
                self.present(controller, animated: true, completion: nil)
            }
        }
    }


}

