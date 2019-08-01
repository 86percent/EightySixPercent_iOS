//
//  Constant.swift
//  Test86
//
//  Created by Glussian on 02/04/2019.
//  Copyright © 2019 Glussian. All rights reserved.
//

import UIKit

struct BotExample {
    var name : String!
    var uuid : String!
    var jsonFile: String!
    
    init(name: String, uuid : String, jsonFile: String) {
        self.name = name
        self.uuid = uuid
        self.jsonFile = jsonFile
    }
}

struct Bots {
    static let simple = BotExample(name: "Simple example",
                                   uuid: "93F9B90F-5335-4BCB-8EA2-51040458AC7E",
                                   jsonFile: "simpleDemo.json")
    
    static let starwars = BotExample(name: "Example using theme",
                                     uuid: "A8E89BEB-9687-FC03-5B90-9660CFA408A4",
                                     jsonFile: "starwarsBot.json")
    
    static let customController = BotExample(name: "Example with Custom Controller",
                                   uuid: "03C329CD-29E5-2ABD-7D83-1623C63C7D90",
                                   jsonFile: "customController.json")
}


