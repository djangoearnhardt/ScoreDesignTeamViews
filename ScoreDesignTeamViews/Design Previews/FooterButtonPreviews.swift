//
//  FooterButtonPreviewsView.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/19/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
  👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
 
 How to use this file?
 
 Change the text property in line 40, by typing a word inside of the quotation marks. Words that can be translated are Start, Scan, and Confirm.
 
 Change the buttonOption property, by deleting the value currently there. Your replacement options are:
 
    .smallBlack
    .smallGreen
    .smallWhite
    .mediumBlack
    .mediumGreen
    .mediumWhite
    .largeBlack
    .largeGreen
    .largeWhite
    .extraLargeBlack
    .extraLargeGreen
    .extraLargeWhite
 
 You may need to tap the Resume button in the top right corner of this screen, if your preview does not automatically load.

   👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
 */

import SwiftUI

struct FooterButtonPreviews: View {
    var body: some View {
        FooterButton(text: "Start", buttonOption: .mediumBlack)
    }
}


/// Don't alter this section
struct ButtonView_Previews: PreviewProvider {
    static var localizations = Bundle.main.localizations.map(Locale.init).filter { $0.identifier != "base" }.filter { $0.identifier != "en" }
    static let dynamicTypeSizes: [ContentSizeCategory] = [.extraSmall, .large, .extraExtraExtraLarge]
    
    static var previews: some View {
        Group {
            FooterButtonPreviews()
                .previewLayout(PreviewLayout.fixed(width: DeviceScreenSizes.iPhone5.deviceScreenSizes, height: 100))
                .padding()
                .previewDisplayName("iPhone 5")
            
            FooterButtonPreviews()
                .previewLayout(PreviewLayout.fixed(width: DeviceScreenSizes.iPhone5.deviceScreenSizes, height: 100))
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("iPhone5 - Dark Mode")
            
            FooterButtonPreviews()
                .previewLayout(PreviewLayout.fixed(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 100))
                .padding()
                .previewDisplayName("iPhone 8")
            
            FooterButtonPreviews()
                .previewLayout(PreviewLayout.fixed(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 100))
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("iPhone8 - Dark Mode")
            
            ForEach(localizations, id: \.identifier) { locale in
                FooterButtonPreviews()
                    .previewLayout(PreviewLayout.fixed(width: 340, height: 100))
                    .padding()
                    .environment(\.locale, locale)
                    .previewDisplayName("iPhone5 - " +  "\(Locale.current.localizedString(forIdentifier: locale.identifier)!)")
            }
            
            ForEach(localizations, id: \.identifier) { locale in
                FooterButtonPreviews()
                    .previewLayout(PreviewLayout.fixed(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 100))
                    .padding()
                    .environment(\.locale, locale)
                    .previewDisplayName("iPhone8 - " +  "\(Locale.current.localizedString(forIdentifier: locale.identifier)!)")
            }
        }
    }
}
