//
//  ConfirmButton.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/22/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI


struct ConfirmButton_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmButton(text: LocalizedStringKey("Scan"), buttonOption: .smallWhite, isTapped: true)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 100)
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Scan View")
    }
}

struct ConfirmButton: View {
    let text: LocalizedStringKey
    let buttonOption: ConfirmButtonOption
    @State var isTapped: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            Button(action: { self.isTapped.toggle() }) {
                HStack(alignment: .center) {
                    VStack {
                        Spacer().frame(width: 10)
                    }
                    VStack {
                        Image(systemName: "camera")
                            .foregroundColor(Color.buttonBlack)
                    }
                    VStack {
                        Text(self.text)
                            .font(self.buttonOption.titleFont)
                            .foregroundColor(self.buttonOption.titleColor)
                            .frame(minWidth: 50)
                    }
                    VStack {
                        Spacer().frame(width: 10)
                    }
                } // HStack
                    .frame(width: (geometry.size.width - ConfirmButtonLayout.margin), height: ConfirmButtonLayout.height, alignment: .center)
                    .padding(self.buttonOption.edgeInsets)
            } // Button
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(Color.buttonGray, lineWidth: 1)
            ).background(RoundedRectangle(cornerRadius: 32).fill(self.buttonOption.backgroundColor))
                .frame(width: 10)
        } // Geometry Reader
    } // body
} // Parent View

extension ConfirmButton {
    enum ConfirmButtonOption {
        case smallBlack
        case smallGreen
        case smallWhite
        case mediumBlack
        case mediumGreen
        case mediumWhite
        
        var titleFont: Font {
            switch self {
            case .smallBlack, .smallGreen, .smallWhite:
                return .scoreSubtitle
            case .mediumBlack,.mediumGreen, .mediumWhite:
                return .scoreBody
            }
        }
        var edgeInsets: EdgeInsets {
            switch self {
            case .smallBlack, .smallGreen, .smallWhite:
                return EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
            case .mediumBlack, .mediumGreen, .mediumWhite:
                return EdgeInsets(top: 15, leading: 10, bottom: 18, trailing: 10)
            }
        }
        var titleColor: Color {
            switch self {
            case .smallBlack, .mediumBlack:
                return Color.textWhite
            case .smallGreen, .mediumGreen:
                return Color.textWhite
            case .smallWhite, .mediumWhite:
                return Color.textBlack
            }
        }
        var backgroundColor: Color {
            switch self {
            case .smallBlack, .mediumBlack:
                return Color.buttonBlack
            case .smallGreen, .mediumGreen:
                return Color.buttonGreen
            case .smallWhite, .mediumWhite:
                return Color.clear
            }
        }
    }
    
    enum ConfirmButtonLayout {
        static let height: CGFloat = 16
        static let margin: CGFloat = 56
        static let bottomMargin: CGFloat = 24.5
    }
}

