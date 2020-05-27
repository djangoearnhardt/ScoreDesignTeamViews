//
//  SubtitleView.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
 👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟

Getting the hang of it?

Change the subtitle property in line 23, by typing a word inside of the quotation marks, ie: "Air Max"

You may need to tap the Resume button in the top right corner of this screen, if your preview does not automatically load.

  👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
*/

struct SubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleView(subtitle: "Air Jordan 3 Retro")
        .padding(EdgeInsets(top: 0, leading: -180, bottom: 0, trailing: 0))
        .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 35)
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Subtitle View")
    }
}

import SwiftUI

struct SubtitleView: View {
    let subtitle: String
    
    var body: some View {
        ScoreTextView(text: subtitle, color: .textGray)
            .font(.scoreSubtitle)
    }
}

