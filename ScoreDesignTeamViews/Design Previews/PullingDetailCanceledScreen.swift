//
//  PullingDetailCanceledScreen.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct PullingDetailCanceledScreen: View {
    var body: some View {
        return VStack {
            ZStack {
                VStack(alignment: .leading) {
                    Group {
                        TitleSubtitleSLATimingSection(title: "Canceled by Store", subtitle: "Customer Name has \nbeen notified", color: .red)
                        Spacer().frame(height: 20)
                        TitleView(title: "Summary")
                        Spacer().frame(height: 20)
                    } // Group
                    Group {
                        TitleView(title: "1 Not Found")
                        Spacer().frame(height: 30)
                        ProductCard()
                        Spacer().frame(height: 30)
                        TitleView(title: "Details")
                    } // Group
                    Group {
                        TitleSubtitleSLATimingSection(title: "Order Placed", subtitle: "5/22/20 11:06 am", color: .textGray)
                        TitleSubtitleSLATimingSection(title: "Canceled by", subtitle: "Athlete Name", color: .textGray)
                    } // Group
                } // VStack
                .padding(EdgeInsets(top: 0, leading: -80, bottom: 0, trailing: 0))
                
                VStack(alignment: .leading) {
                    FooterButton(text: LocalizedStringKey("Done"), buttonOption: .mediumBlack)
                } // VStack
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -580, trailing: 0))
                    .zIndex(1)
            } // ZStack
        } // VStack
    } // body
} // Parent View

struct PullingDetailCanceledScreen_Previews: PreviewProvider {
    static var previews: some View {
        PullingDetailCanceledScreen()
    }
}
