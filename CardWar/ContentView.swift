//
//  ContentView.swift
//  CardWar
//
//  Created by KIM YU on 12/30/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    // Generate a random number between 2 and 14
                    let playerCardNum = Int.random(in: 2...14)
                    let cpuCardNum = Int.random(in: 2...14)
                    
                    
                    // Update the cards
                    playerCard = "card" + String(playerCardNum)
                    cpuCard = "card" + String(cpuCardNum)
                    
                    // Update the Score
                    if playerCardNum > cpuCardNum {
                        playerScore += 1}
                    else if cpuCardNum > playerCardNum {
                        cpuScore += 1 }
                }, label: {
                   
                    Image("dealbutton").resizable().scaledToFit()
                            .padding(15)
                           
                           
                            .cornerRadius(15)
                    
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        
                        
                    }
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

