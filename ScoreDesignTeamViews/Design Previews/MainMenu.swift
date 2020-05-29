//
//  MainMenu.swift
//  ScoreDesignTeamViews
//
//  Created by Sam LoBue on 5/27/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI


extension MainMenu {
    public class TitleAndNumber: ObservableObject {
        @Published var titleText: String = "Give Me Some Views"
        @Published var viewCount: Int = 4
    }
}

struct MainMenu: View {

    @ObservedObject var titleAndNumber = TitleAndNumber()
    
    var body: some View {
        // MARK: TAB 1
        TabView {
            ZStack {
            ScrollView {
                VStack(spacing: 0) {
                    Spacer().frame(height: 10)
                    
                    Image("backArrow")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Spacer().frame(height: 10)
                    
                    TitleSubtitleSLATimingSection(title: "1 hr 28 min over", subtitle: "Ship from Store for \nCustomer Name", color: .red).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Spacer().frame(height: 50)
                    
                    VStack(spacing: 20) {
                        MakeViewsWithTitleTextAndViewCount(titleAndNumber.titleText, titleAndNumber.viewCount) { (
                            titleText, viewCount) in
                            ForEach(0..<viewCount) { view in
                                TitleSubtitleActionView(title: "Step \(view + 1)", subtitle: titleText)
                            }
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading) // VStack
                    
                    Spacer().frame(height: 20)
                    
                    Group {
                        TitleView(title: "Overview")
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading) 
                    
                    Spacer().frame(height: 20)
                    
                    Group {
                        ProductCard()
                        Spacer().frame(height: 70)
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading) // VStack
                    
                } // VStack
                    .padding(EdgeInsets(top: 0, leading: 35, bottom: 0, trailing: 0))
                } // ScrollView
                
                FooterButton(text: "Start", buttonOption: .largeBlack)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -530, trailing: 0))
            } // ZStack
            .tabItem {
                Image(systemName: "1.square.fill")
                Text("Pulling Detail Screen")
            }
                
            
            // MARK: TAB 2
            ZStack {
            ScrollView {
                VStack(spacing: 0) {
                    Group {
                        
                    Spacer().frame(height: 10)
                        
                    TitleSubtitleSLATimingSection(title: "Canceled by Store", subtitle: "Customer Name has \nbeen notified", color: .red)
                    
                    Spacer().frame(height: 20)
                    
                    TitleView(title: "Summary")
                        
                    Spacer().frame(height: 20)
                        
                    TitleView(title: "1 Not Found")
                        
                    Spacer().frame(height: 30)
                        
                    ProductCard()
                        
                    Spacer().frame(height: 30)
                        
                    TitleView(title: "Details")
                        
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    Group {
                        TitleSubtitleSLATimingSection(title: "Order Placed", subtitle: "5/22/20 11:06 am", color: .textGray)
                        TitleSubtitleSLATimingSection(title: "Canceled by", subtitle: "Athlete Name", color: .textGray)
                        Spacer().frame(height: 40)
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                }.padding(EdgeInsets(top: 0, leading: 35, bottom: 0, trailing: 0))
                } // ScrollView
                
                FooterButton(text: "Done", buttonOption: .largeBlack)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -530, trailing: 0))
            } // ZStack
            .tabItem {
                Image(systemName: "2.square.fill")
                Text("Pulling Detail Canceled")
            }
        } // TabView
    } // body
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(titleAndNumber: MainMenu.TitleAndNumber())
    }
}
