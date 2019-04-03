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
        let appearance: EPAppearance = EPAppearance(resourcePrefix: "starwar", mainColor: mainColor, secondaryColor: mainColor)
        appearance.bubbleAppearance.incoming.textColor = .black
        appearance.bubbleAppearance.incomingFollowed.textColor = .black
        appearance.customFontName = "ComicBook" //ComicBook-Bold"
        appearance.customStrongFontName = "ComicBook-BoldItalic"
        appearance.customSectionDateColor = #colorLiteral(red: 0.9931825995, green: 0.856918633, blue: 0.007652404252, alpha: 1).alpha(0.8)
        appearance.customBackgroundColor = UIColor.clear
        appearance.endBotButtonColor = #colorLiteral(red: 0.9931825995, green: 0.856918633, blue: 0.007652404252, alpha: 1)
        appearance.endBotButtonTextColor = .black

        adjustIncomingBubbleAppearance(appearance.bubbleAppearance.incoming, incoming: true, withTail: true, color: .black)
        adjustIncomingBubbleAppearance(appearance.bubbleAppearance.incomingFollowed, incoming: true, withTail: false, color: .black)
        adjustIncomingBubbleAppearance(appearance.bubbleAppearance.outgoing, incoming: false, withTail: true, color: mainColor)
        adjustIncomingBubbleAppearance(appearance.bubbleAppearance.outgoingFollowed, incoming: false, withTail: false, color: mainColor)
        
        return appearance
    }
    
    fileprivate class func adjustIncomingBubbleAppearance(_ appearance: EPAppearance.Bubbles.Appearance, incoming: Bool,  withTail: Bool, color: UIColor)  {
        
        let shadow: CGFloat = 2
        let margin: CGFloat = 8
        let tailSize: CGFloat = 8
        let defaultAvatarHeight: CGFloat = 40
        let layoutOption = appearance.cellLayoutOption
        appearance.avatarPictureRounded = false
        appearance.textColor = color
        if incoming {
            
            appearance.strongTextColor = #colorLiteral(red: 0.9931825995, green: 0.856918633, blue: 0.007652404252, alpha: 1)
            layoutOption.avatarPictureSize = withTail ? CGSize(width: defaultAvatarHeight, height: defaultAvatarHeight) :  CGSize.zero
            layoutOption.avatarVerticalOffset = withTail ? defaultAvatarHeight/2 : 0
            layoutOption.bubbleImageBorderInset = UIEdgeInsets(top: 0, left: withTail ? 0 : defaultAvatarHeight, bottom: 0, right: 0 )
            layoutOption.textContentBorderInset = UIEdgeInsets(top: margin + shadow, left: margin + tailSize + shadow, bottom: margin + shadow, right: margin  + shadow)
        }
        else {
            
            layoutOption.avatarPictureSize = CGSize.zero
            layoutOption.avatarVerticalOffset = withTail ? 12 : 0
            layoutOption.bubbleImageBorderInset = UIEdgeInsets.zero
            layoutOption.textContentBorderInset = UIEdgeInsets(top: margin + shadow, left: margin + shadow, bottom: margin + shadow, right: margin  + shadow + tailSize)
        }
        
    }
 
  
    
    
    
}



