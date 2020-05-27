//
//  ConfirmableProductCard.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct ConfirmableProductCard: View {
    var body: some View {
        return VStack {
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    HStack {
                        Spacer().frame(width: 16)
                        ProductCard()
                    } // HStack
                    Spacer().frame(height: 10)
                    HStack(alignment: .center) {
                        ConfirmButton(text: LocalizedStringKey("Scan"), buttonOption: .smallWhite)
                        Button(action: { }) {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.textBlack)
                                .frame(width: 40, height: 40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 32)
                                        .stroke(Color.buttonGray, lineWidth: 1))
                                .background(RoundedRectangle(cornerRadius: 32).fill(Color.buttonGray))
                            Spacer().frame(width: 25)
                        } // Button
                    } // HStack
                } // VStack
                    .frame(maxHeight: geometry.size.height / 3.5)
            } // Geometry Reader
        } //VStack
    } // body
} // Parent View

struct ConfirmableProductCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ConfirmableProductCard()
                .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 200)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Subtitle View")
        }
    }
}
