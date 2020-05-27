//
//  TitleView.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Overview")
            .padding(EdgeInsets(top: 0, leading: -180, bottom: 0, trailing: 0))
            .frame(width: DeviceScreenSizes.iPhone8.deviceScreenSizes, height: 35)
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Title View")
    }
}

struct TitleView: View {
    let title: String
    
    var body: some View {
        ScoreTextView(text: title, color: .textBlack)
            .font(.scoreTitle)
    }
}

