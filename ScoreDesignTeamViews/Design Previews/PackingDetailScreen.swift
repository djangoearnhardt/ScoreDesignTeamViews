//
//  PackingDetailScreen.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct PackingDetailScreen: View {
    var body: some View {
        return VStack {
            VStack(alignment: .leading) {
                Group {
                    Image("backArrow")
                        .frame(width: 30, height: 30)
                        .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                    TitleSubtitleSLATimingSection(title: "21 min left", subtitle: "Ship from Store for \nCustomer Name", color: .textBlack)
                    Spacer().frame(height: 50)
                    TitleSubtitleActionView(title: "Step 1", subtitle: "Start Packing Order")
                    Spacer().frame(height: 10)
                    TitleSubtitleActionView(title: "Step 2", subtitle: "Scan to Confirm")
                    Spacer().frame(height: 10)
                } // Group
                Group {
                    TitleSubtitleActionView(title: "Step 3", subtitle: "Select Box & Pack")
                    Spacer().frame(height: 10)
                    TitleSubtitleActionView(title: "Step 4", subtitle: "Print & Deliver")
                    Spacer().frame(height: 20)
                    TitleView(title: "Overview")
                } // Group
            } // VStack
            .padding(EdgeInsets(top: 0, leading: -95, bottom: 0, trailing: 0))
            VStack(alignment: .leading) {
                FooterButton(text: LocalizedStringKey("Start"), buttonOption: .mediumBlack)
            } // VStack
            .padding(EdgeInsets(top: 0, leading: 0, bottom: -10, trailing: 0))
        } // VStack
    } // body
} // Parent View

struct PackingDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PackingDetailScreen()
    }
}
