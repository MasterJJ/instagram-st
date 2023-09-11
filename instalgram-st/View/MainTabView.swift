//
//  MainTabView.swift
//  instalgram-st
//
//  Created by masterj on 2023/09/11.
//


import SwiftUI

struct MainTabView: View{
    
    private enum Tabs {
        case home, find, play, shop, person
    }
    
    @State private var _selected_tab: Tabs = .home
    
    
    var body: some View {

        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            FindView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            PlayView()
                .tabItem {
                    Image(systemName: "play.square.stack.fill")
                }
            ShopView()
                .tabItem {
                    Image(systemName: "bag")
                }
            PersonView()
                .tabItem {
                    Image(systemName: "person.circle")
                
                }
                .badge(10)
        }
        
    }
    
    
}
