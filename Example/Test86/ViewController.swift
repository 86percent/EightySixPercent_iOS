//
//  ViewController.swift
//  Test86
//
//  Created by Nicolas DOMINATI on 28/02/2019.
//  Copyright © 2019 Lunabot. All rights reserved.
//

import UIKit
import EightySixPercent

class ViewController: UITableViewController {

    var content = [Bots.simple, Bots.starwars, Bots.customController]

    func openBot(uuid : String ,with appearance : EPAppearance) {
        
       let conversation = EPChatConversation(botUuid: uuid)
        EPManager.shared.controller(for: conversation,
                                    appearance: appearance,
                                    delegate: self)
        { controller, error in
            //depending on the fetching strategy you may to have to manage error / HUD
            if let controller = controller {
                self.navigationController?.pushViewController(controller, animated: true)
            }
            else {
                print(error?.localizedDescription ?? "")
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bot = content[indexPath.row]
        
        switch bot.uuid! {
        case Bots.starwars.uuid:
            openBot(uuid: bot.uuid, with: EPAppearance.starwars())
        default:
            let simpleApperance = EPAppearance(resourcePrefix: "default",
                                               mainColor: #colorLiteral(red: 0.9665707946, green: 0.3551087976, blue: 0.3708210886, alpha: 1),
                                               secondaryColor: UIColor(hex:"FFE7E7"))
            openBot(uuid: bot.uuid, with: simpleApperance)
        }
        
        
    }
    
}

// MARK : EPChatMessageViewControllerDelegate
// this is optionnal but may be used for customization purpose
extension ViewController : EPChatMessageViewControllerDelegate {

    func epChatMessageViewControllerCustomInputValidator(controller: EPChatMessageViewController, contextKey: String) -> EPInputValidator? {
        return nil
    }
    
    func epChatMessageViewControllerCustomInitialization(controller: EPChatMessageViewController) {
        //this code is called in the viewDidLoad of the ChatMessageViewController
        //for example you can change navigation title
        controller.title = "Demo"
        log(message: nil)
        
    }
    
    func epChatMessageViewControllerMessageDidUpdate(controller: EPChatMessageViewController, lastMessage: EPChatMessage?, chatConversation: EPChatConversation) {
        log(message: nil)
    }
    
    func epChatMessageViewControllerChatConversationContextDidChange(controller: EPChatMessageViewController, context: [EPContextObject], insertions: [EPContextObject], updates: [EPContextObject]) {
        log(message: nil)
    }
    
    func epChatMessageViewControllerCustomInputType(controller: EPChatMessageViewController, customInputTypeId: String) -> EPCustomInputType? {
        
        //used to provide a custom Input type
        print("Will display custom controller for id: \(customInputTypeId)")
        
        if ( customInputTypeId == "CUSTOM_CONTROLLER") {
            return CustomExample()
        } else {
            return nil
        }
    }
    
    func epChatMessageViewControllerBotDidFinish(controller: EPChatMessageViewController, context: [EPContextObject]) {
    
        
        //is called when the bot is finished. This is the place to save your information in your model..
        let contextDescription = context.map{ "\($0.key) = \(String(describing: $0.value))"}.joined(separator: "\n\n")
        log(message: "\(contextDescription)")
        let alertViewController = UIAlertController(title:nil, message: contextDescription, preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        controller.present(alertViewController, animated: true)
        
    }
    
    func epChatMessageViewControllerUserDidInput(controller: EPChatMessageViewController, content: EPMessageContent, context: [EPContextObject]) {
        log(message: "\(context)")
    }


    func log(message: String?,
             functionName:  String = #function) {
        print("EPLog : \(functionName) \(message ?? "")")
    }
    
}

