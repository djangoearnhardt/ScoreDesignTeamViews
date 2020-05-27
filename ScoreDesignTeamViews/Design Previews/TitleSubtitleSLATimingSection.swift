//
//  TitleSubtitleSLATimingSection.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

/*
 👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟

How to use this file?

Change the title property in line 30, by typing a word inside of the quotation marks, ie: "60 min left"
 
Chage the subtitle property in line 30 by typing a word inside of the quotation marks.
 
Change the color property in line 30 by deleting .textBlack and typing . This will list the colors you can choose from.

You may need to tap the Resume button in the top right corner of this screen, if your preview does not automatically load.

  👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟👟
*/

import SwiftUI

struct TitleSubtitleSLATimingSection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TitleSubtitleSLATimingSection(title: "21 min left", subtitle: "Ship from Store for \nCustomer Name", color: .textBlack)
                .padding(EdgeInsets(top: 0, leading: -120, bottom: 0, trailing: 0))
                .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 120)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Title Subtitle SLA Timing")
        }
    }
}

struct TitleSubtitleSLATimingSection: View {
    let title: String
    let subtitle: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ScoreTextView(text: title, color: color)
            .font(.scoreHeadline)
            ScoreTextView(text: subtitle, color: .gray)
            .font(.scoreHeadline)
        } // VStack
        .frame(minHeight: 120)
    } // body
} // Parent View
