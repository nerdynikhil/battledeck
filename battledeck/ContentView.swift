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
    
    var playerScore = 0
    var cpuScore = 0
    
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
//                Image("button")
                
                
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
        playerCard = "card" + String(Int.random(in: 2...14))
                                      
        // Randomize the cpu card
        cpuCard = "card" + String(Int.random(in: 2...14))
                                      
        // Update
        
        
    }
}

#Preview {
    ContentView()
}
