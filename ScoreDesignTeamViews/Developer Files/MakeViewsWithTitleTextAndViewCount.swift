//
//  MakeViewsWithTitleTextAndViewCount.swift
//  ScoreDesignTeamViews
//
//  Created by Sam LoBue on 5/28/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct MakeViewsWithTitleTextAndViewCount<Content>: View where Content : View {
    let titleText: String
    let viewCount: Int
    var content: (String, Int) -> Content

    init(_ titleText: String, _ viewCount: Int, @ViewBuilder content: @escaping (String, Int) -> Content) {
        self.titleText = titleText
        self.viewCount = viewCount
        self.content = content
    }
    
    var body: some View {
        self.content(self.titleText, self.viewCount)
    }
}
