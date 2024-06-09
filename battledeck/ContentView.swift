//
//  ContentView.swift
//  battledeck
//
//  Created by Nikhil Barik on 09/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-cloth")
            VStack{
             
                Spacer()
                Image("logo")
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card5")
                    Spacer()
                }
                Spacer()
                Image("button")
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
                    Text("0")
                    Spacer()
                    Text("0")
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
