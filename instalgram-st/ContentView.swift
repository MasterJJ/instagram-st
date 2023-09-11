//
//  ContentView.swift
//  instalgram-st
//
//  Created by masterj on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            
            Text("First Tab")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Last Tab")
                .tabItem {
                    Image(systemName: "play.square.stack.fill")
                }
            Text("Last Tab")
                .tabItem {
                    Image(systemName: "bag")
                }
            Text("Last Tab")
                .tabItem {
                    Image(systemName: "person.circle")
                
                }
                .badge(10)
            
        }
        .font(.headline)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
