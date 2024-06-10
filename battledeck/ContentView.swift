//
//  ContentView.swift
//  battledeck
//
//  Created by Nikhil Barik on 09/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card4"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
            VStack{
             
                Spacer()
                Image("logo")
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()

                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    Text("Player")
                    Spacer()
                    Text("CPU")
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text(String(playerScore))
                    Spacer()
                    Text(String(cpuScore))
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
    
    func deal(){
        // Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScore += 1
        }
        
        else if cpuCardValue > playerCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
