//
//  PersonView.swift
//  instalgram-st
//
//  Created by masterj on 2023/09/11.
//

import Foundation
import SwiftUI

struct PersonView: View {
    
    var body: some View {
        VStack {
            // TODO : natigation
            
            HStack(spacing: 1.5) {
                
                Image("person_1")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                
                
                Spacer()
                
                VStack {
                    Text("574").font(.headline)
                    Text("Posts")
                    
                }
                
                Spacer()
                
                VStack {
                    Text("874K").font(.headline)
                    Text("Followers")
                    
                }
                Spacer()
                VStack {
                    Text("441").font(.headline)
                    Text("Following")
                    
                }
                Spacer()
                
            }.padding(10)
            
        
            HStack {
                Text("     ")
                VStack(alignment: .leading) {
                    Text("Hello  Where is my money")
                        .lineLimit(1)
                        .font(.headline)
                    Text("I need more job ")
                        .lineLimit(1)
                        .font(.headline)
                }
                Spacer()
            }
            
            
            HStack {
                
                
                Button {
                    
                } label:{
                    Text("Follow")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                }
                .fixedSize()
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                
                
                Button {
                    
                } label:{
                    Text("Message")
                        .fixedSize()
                        .frame(width: 60, height: 10)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }
                
                Button {
                    
                } label:{
                    Text("Email")
                        .frame(width: 60, height: 10)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }
                
                Button {
                    
                } label:{
                    Image(systemName: "chevron.down")
                    
                        .frame(minWidth: 0, maxWidth: 10)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }
            }
            PsesonContentTabn()
            Spacer()
            
        }
    }
}
