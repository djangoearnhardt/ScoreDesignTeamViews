//
//  ProductCard.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
 👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟

This one is a bit more advanced.

Change the title properties in lines 40 and 41 by typing a word inside of the quotation marks, ie: "Bin"
 
 Change the subtitle properties in line 45, 46, and 47 by typing a word inside of the quotation marks, ie: "Bin"
 
 You can also change the spacing in the sections by changing the whole number value in line 39 and 44, ie: 6

You may need to tap the Resume button in the top right corner of this screen, if your preview does not automatically load.

  👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
*/

import SwiftUI

struct ProductCard: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack {
                Image(systemName: "cart")
                    .frame(width: 100, height: 100)
                    .background(Color.buttonGray)
                    .cornerRadius(6)
                    .font(.headline)
            } // VStack
            Spacer().frame(width: 20)
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing:  3) {
                    TitleView(title: "Bin:")
                    TitleView(title: "136064-111")
                } // VStack
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 3) {
                    SubtitleView(subtitle: "Air Jordan 3 Retro")
                    SubtitleView(subtitle: "Size: 8")
                    SubtitleView(subtitle: "Qty: 1")
                } // VStack
            } // VStack
        } // HStack
    } // body
} // Parent View

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
            .padding(EdgeInsets(top: 0, leading: -100, bottom: 0, trailing: 0))
            .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 130)
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Subtitle View")
    }
}
