//
//  PullingDetailScreen.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct PullingDetailScreen: View {
    var body: some View {
        return VStack {
            ZStack {
                VStack(alignment: .leading) {
                    Group {
                        Image("backArrow")
                            .frame(width: 30, height: 30)
                            .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                        TitleSubtitleSLATimingSection(title: "1 hr 28 min over", subtitle: "Ship from Store for \nCustomer Name", color: .red)
                        Spacer().frame(height: 50)
                        TitleSubtitleActionView(title: "Step 1", subtitle: "Start Order")
                        Spacer().frame(height: 10)
                        TitleSubtitleActionView(title: "Step 2", subtitle: "Pull 1 Item")
                        Spacer().frame(height: 10)
                    } // Group
                    Group {
                        TitleSubtitleActionView(title: "Step 3", subtitle: "Prep for Packing")
                        Spacer().frame(height: 20)
                        TitleView(title: "Overview")
                    } // Group
                } // VStack
                .padding(EdgeInsets(top: -190, leading: -100, bottom: 0, trailing: 0))
                VStack(alignment: .leading) {
                    FooterButton(text: LocalizedStringKey("Start"), buttonOption: .mediumBlack)
                } // VStack
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -580, trailing: 0))
                    .zIndex(1)
            } // ZStack
        } // VStack
    } // body
} // Parent View

struct PullingDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PullingDetailScreen()
    }
}
