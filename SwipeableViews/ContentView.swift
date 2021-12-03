//
//  ContentView.swift
//  SwipeableViews
//
//  Created by Federico on 03/12/2021.
//

import SwiftUI

struct ContentView: View {
    private let colors: [Color] = [.red, .blue, .green, .orange, .black]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(colors, id: \.self) { color in
                    ZStack {
                        color
                        Text("\(color.description)")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .cornerRadius(30)
            .padding(10)
            
            Text("Try to swipe!")
                .italic()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
