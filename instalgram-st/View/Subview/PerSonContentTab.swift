//
//  PserSonContentTab.swift
//  instalgram-st
//
//  Created by masterj on 2023/09/15.
//

import Foundation

import SwiftUI

struct PerSonContentTab: View{
    
    private enum Tabs {
        case photo, video, Tags
    }
    
    @State private var _selected_tab: Tabs = .photo
    
    
    var body: some View {

        TabView {
      //      HomeView()
            Text("1")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("3")
                .tabItem {
                    Image(systemName: "play.square.stack.fill")
                }
        }
        
    }
    
    
}
