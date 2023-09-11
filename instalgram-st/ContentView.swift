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
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
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
