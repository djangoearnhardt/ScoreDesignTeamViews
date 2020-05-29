//
//  MainMenu.swift
//  ScoreDesignTeamViews
//
//  Created by Sam LoBue on 5/27/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(titleAndNumber: MainMenu.TitleAndNumber())
    }
}

struct MainMenu: View {
    let numberOfTitleSubtitleSLATimingViews: Int = 1
    let numberOfTitleViews: Int = 3
    let subtitleStringsForPulling: [String] = [
    "Start Over", "Pull 1 Item", "Prep for Packing"
    ]
    let subtitleStringsForPacking: [String] = [
    "Start Packing Order", "Pull 1 Item", "Select Box & Pack", "Print & Deliver"
    ]
    
    @ObservedObject var titleAndNumber = TitleAndNumber()
    
    var body: some View {
        TabView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Spacer().frame(height: 30)
                    Image("backArrow")
                    
                    Spacer().frame(height: 40)
                    
                    VStack(alignment: .leading, spacing: 20) {
                    MakeViewsWithTitleTextAndViewCount(titleAndNumber.titleText, titleAndNumber.viewCount) { (
                        titleText, viewCount) in
                        ForEach(0..<viewCount) { view in
                            TitleView(title: titleText)
                        }
                    }
                    }
//                    MakeViewsWithTitleTextAndViewCount
//                    MakeViewsWithTitleTextAndViewCount(titleAndNumber.titleText, titleAndNumber.viewCount) { (titleText, viewCount) in
//                        VStack(alignment: .leading) {
//                        ForEach(0..<viewCount) { view in
//                            TitleView(title: titleText)
//                            }
//                        }
//                    }
//                    ForEach(0..<numberOfTitleSubtitleSLATimingViews) { number in
//                        TitleSubtitleSLATimingSection(title: "1 hr 28 min over", subtitle: "Ship from Store for \nCustomer Name", color: .red)
//                        Spacer().frame(height: 50)
//                    } // titleSubtitleViews
//
//                    ForEach(1..<(numberOfTitleViews + 1)) { number in
//                        TitleSubtitleActionView(title: "Step \(number)", subtitle: self.subtitleStringsForPulling[number - 1])
//                        Spacer().frame(height: 10)
//                    } // titleViews
//
//                    Spacer().frame(height: 20)
//                    TitleView(title: "Overview")
//
                } // VStack
//                    FooterButton(text: "Start", buttonOption: .largeBlack)
//                    .zIndex(0)
            } // ZStack
            } // ScrollView
            .tabItem {
                Image(systemName: "1.square.fill")
                Text("Pulling Detail")
            } // Packing Detail Tab item
        }
    }
}

extension MainMenu {
    public class TitleAndNumber: ObservableObject {
        @Published var titleText: String = "Give Me Some Views"
        @Published var viewCount: Int = 10
    }
}
