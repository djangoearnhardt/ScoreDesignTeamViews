//
//  FooterButton.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/21/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
 👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟

How to use this file?

Change the buttonOption property in line 40, by deleting the value currently there. Your replacement options are:

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

struct FooterButton_Previews: PreviewProvider {
    static var previews: some View {
        FooterButton(text: LocalizedStringKey("Start"), buttonOption: .smallBlack)
    }
}

struct FooterButton: View {
    let text: LocalizedStringKey
    let buttonOption: FooterButtonOption
    
    var body: some View {
        GeometryReader { geometry in
            return VStack {
                Button(action: {
                    print("Footer Button")
                }) {
                    Text(self.text)
                        .font(self.buttonOption.titleFont)
                        .frame(width: (geometry.size.width - FooterButtonLayout.margin), height: FooterButtonLayout.height, alignment: .center)
                        .padding(self.buttonOption.edgeInsets)
                        .foregroundColor(self.buttonOption.titleColor)
                        .background(self.buttonOption.backgroundColor)
                }
                .cornerRadius(geometry.size.height / 2)
            }
        }
    }
}

extension FooterButton {
    enum FooterButtonOption {
        case smallBlack
        case smallGreen
        case smallWhite
        case mediumBlack
        case mediumGreen
        case mediumWhite
        case largeBlack
        case largeGreen
        case largeWhite
        case extraLargeBlack
        case extraLargeGreen
        case extraLargeWhite
    
        var titleFont: Font {
            switch self {
            case .smallBlack, .smallWhite, .smallGreen:
                return .scoreSubtitle
            case .mediumBlack, .mediumWhite, .mediumGreen:
                return .scoreBody
            case .largeBlack, .largeGreen, .largeWhite:
                return .scoreBodyLarge
            case .extraLargeBlack, .extraLargeGreen, .extraLargeWhite:
                return .scoreTitle
            }
        }
        var edgeInsets: EdgeInsets {
            switch self {
            case .smallBlack, .smallGreen, .smallWhite:
                return EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
            case .mediumBlack, .mediumGreen, .mediumWhite:
                return EdgeInsets(top: 15, leading: 10, bottom: 18, trailing: 10)
            case .largeBlack, .largeGreen, .largeWhite:
                return EdgeInsets(top: 17, leading: 10, bottom: 17, trailing: 10)
            case .extraLargeBlack, .extraLargeGreen, .extraLargeWhite:
                return EdgeInsets(top: 28.5, leading: 10, bottom: 31.5, trailing: 10)
            }
        }
        var titleColor: Color {
            switch self {
            case .smallBlack, .mediumBlack, .largeBlack, .extraLargeBlack:
                return Color.textWhite
            case .smallGreen, .mediumGreen, .largeGreen, .extraLargeGreen:
                return Color.textWhite
            case .smallWhite, .mediumWhite, .largeWhite, .extraLargeWhite:
                return Color.textBlack
            }
        }
        var backgroundColor: Color {
            switch self {
            case .smallBlack, .mediumBlack, .largeBlack, .extraLargeBlack:
                return Color.buttonBlack
            case .smallGreen, .mediumGreen, .largeGreen, .extraLargeGreen:
                return Color.buttonGreen
            case .smallWhite, .mediumWhite, .largeWhite, .extraLargeWhite:
                return Color.buttonGreen
            }
        }
    }
    
    enum FooterButtonLayout {
        static let height: CGFloat = 16
        static let margin: CGFloat = 56
        static let bottomMargin: CGFloat = 24.5
    }
}

