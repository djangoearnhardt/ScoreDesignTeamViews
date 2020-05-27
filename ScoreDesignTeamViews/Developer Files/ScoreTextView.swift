//
//  FontSizes.swift
//  SwiftUIPreviews
//
//  Created by Sam LoBue on 5/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct ScoreTextViews_Previews: PreviewProvider {
    static var previews: some View {
        ScoreTextView(text: "Fonts", color: Color.red)
    }
}

struct ScoreTextView: View {
    let text: String
    let color: Color?
    
    var body: some View {
        Text(text)
        .foregroundColor(color)
    }
}
