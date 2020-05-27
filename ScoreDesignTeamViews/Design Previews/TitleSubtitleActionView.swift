//
//  TitleSubtitleActionView.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
 👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟

How to use this file?

Change the title property in line 29, by typing a word inside of the quotation marks, ie: "Step 2"
 
Chage the subtitle property in line 29 by typing a word inside of the quotation marks.

You may need to tap the Resume button in the top right corner of this screen, if your preview does not automatically load.

  👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
*/

import SwiftUI

struct TitleSubtitleActionView_Previews: PreviewProvider {
    static var previews: some View {
        TitleSubtitleActionView(title: "Step 1", subtitle: "Start Order")
            .padding(EdgeInsets(top: 5, leading: -180, bottom: 0, trailing: 0))
            .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 60)
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Title Subtitle Action View")
    }
}

struct TitleSubtitleActionView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            ScoreTextView(text: title, color: .textBlack)
                .font(.scoreSubtitle)
            Spacer().frame(height: 10)
            ScoreTextView(text: subtitle, color: .textBlack)
                .font(.scoreTitle)
            Spacer().frame(maxHeight: 10)
        } // VStack
    } // body
} // Parent View

