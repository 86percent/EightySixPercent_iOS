//
//  StarWarsAppearanceFactory.swift
//  Lunabot_Example
//
//  Created by Greg on 19/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import EightySixPercent

extension  EPAppearance {

    class func starwars() -> EPAppearance {
        let mainColor = UIColor(hex: "#0275D8")
        let global = EPAppearance.Bubbles.GlobalAppearance()

        global.tailOffset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)

        let shadow: CGFloat = 2
        let margin: CGFloat = 8

        global.textContentInset = UIEdgeInsets(top: margin,
                                               left: margin + shadow,
                                               bottom: margin + shadow,
                                               right: margin + shadow)

        let appearance: EPAppearance = EPAppearance(resourcePrefix: "starwar", mainColor: mainColor, secondaryColor: mainColor, generalAppearance: global)
        appearance.bubbleAppearance.incoming.textColor = .black
        appearance.bubbleAppearance.incomingFollowed.textColor = .black
        appearance.customFontName = "ComicBook" //ComicBook-Bold"
        appearance.customStrongFontName = "ComicBook-BoldItalic"
        appearance.customSectionDateColor = #colorLiteral(red: 0.9931825995, green: 0.856918633, blue: 0.007652404252, alpha: 1).alpha(0.8)
        appearance.customBackgroundColor = UIColor.clear
        appearance.endBotButtonColor = #colorLiteral(red: 0.9931825995, green: 0.856918633, blue: 0.007652404252, alpha: 1)
        appearance.endBotButtonTextColor = .black

        appearance.bubbleAppearance.incoming.textColor = .black
        appearance.bubbleAppearance.incomingLast.textColor = .black
        appearance.bubbleAppearance.incomingFollowed.textColor = .black

        appearance.bubbleAppearance.outgoing.textColor = mainColor
        appearance.bubbleAppearance.outgoingFollowed.textColor = mainColor
        appearance.bubbleAppearance.outgoingLast.textColor = mainColor

        return appearance
    }

}
