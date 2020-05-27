//
//  DeviceScreenSizes.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/22/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import UIKit

enum DeviceScreenSizes: CGFloat {
    case iPhone5
    case iPhone8
    
    var deviceScreenSizes: CGFloat {
        switch self {
        case .iPhone5:
            return 320
        case .iPhone8:
            return 375
        }
    }
}
