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
                LogoView()
                
                Spacer()
                
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                        Text("High\nScore".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                VStack(alignment: .center, spacing: 0) {
                    ZStack {
                        ReelViews()
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifier())
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        ZStack {
                            ReelViews()
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ReelViews()
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                    }
                    .frame(maxWidth: 500)
                }
                .layoutPriority(2)
                
                Button(action: {
                    print("Spin the reels")
                }) {
                    Image("gfx-spin")
                        .renderingMode(.original)
                        .resizable()
                        .modifier(ImageModifier())
                }
                
                Spacer()
                
                HStack {
                    Button(action: {
                        print("Bet 20 coins")
                    }) {
                        Text("20")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .font(.system(.title, design: .rounded))
                            .padding(.vertical, 5)
                            .frame(width: 90)
                            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 3)
                    }
                }
            }
            .overlay(
                Button(action: {
                    print("Reset the game")
                }) {
                    Image(systemName: "arrow.uturn.backward.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topLeading
            )
            .overlay(
                Button(action: {
                    print("Info View")
                }) {
                    Image(systemName: "info.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topTrailing
            )
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
