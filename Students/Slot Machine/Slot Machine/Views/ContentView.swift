//
//  ContentView.swift
//  Slot Machine
//
//  Created by Jahaan Pardhanani on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 5) {
                Image("gfx-slot-machine")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
                    .padding(.horizontal)
                    .layoutPriority(1)
                    .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6)
            }
            .padding()
            .frame(maxWidth: 720)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
