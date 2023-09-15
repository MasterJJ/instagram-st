//
//  PersonContentTabn.swift
//  instalgram-st
//
//  Created by masterj on 2023/09/15.
//

import Foundation
import SwiftUI
//import SDWebImageSwiftUI

struct PsesonContentTabn: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        VStack{
            Spacer()
            CustomTopTabBar(tabIndex: $tabIndex)
            if tabIndex == 0 {
                FirstView()
            }
            else {
                SecondView()
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
        .padding(.horizontal, 12)
    }
}

struct FirstView: View{
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.orange)
            Text("FirstView")
        }
    }
}

struct SecondView: View{
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.yellow)
            Text("SecondView")
        }
    }
}

struct CustomTopTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            
            TabBarButton(text: "house", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            TabBarButton(text: "play.rectangle", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
            TabBarButton(text: "person.crop.square", isSelected: .constant(tabIndex == 2))
                .onTapGesture { onButtonTapped(index: 3) }
            
            Spacer()
        }
        .border(width: 1, edges: [.bottom], color: .black)
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
       Image(systemName: text)
        //Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .font(.custom("Avenir", size: 25))
            .padding(.bottom,10)
            .border(width: isSelected ? 2 : 1, edges: [.bottom], color: .black)
            .frame(width: 100, height: 40)
    }
}

struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
