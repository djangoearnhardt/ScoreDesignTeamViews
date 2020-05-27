//
//  Fonts.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/20/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI
import UIKit

public extension Font {
    
    static let scoreHeadline = Font.custom(FontNames.helveticaNeueMedium, size: 24)
    
    static let scoreTitle = Font.custom(FontNames.helveticaNeueMedium, size: 20.0)
    
    static let scoreSubtitle = Font.custom(FontNames.helveticaNeueMedium, size: 14.0)
    
    static let scoreBodyLarge = Font.custom(FontNames.helveticaNeueMedium, size: 18.0)
    
    static let scoreBody = Font.custom(FontNames.helveticaNeueMedium, size: 16.0)
    
}

struct FontNames {
    static let helvetica = "Helvetica"
    static let helveticaBold = "Helvetica-Bold"
    static let helveticaNeue = "HelveticaNeue"
    static let helveticaNeueBold = "HelveticaNeue-Bold"
    static let helveticaNeueMedium = "HelveticaNeue-Medium"
}

