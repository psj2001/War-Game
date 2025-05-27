//
//  ContentView.swift
//  WarCard
//
//  Created by Pranav P s on 28/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
//                Image("button")
                
                Button {
                    Deal()
                } label: {
                Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player1")
                            .font(.headline)
                            .padding(.bottom,10)
                        
                        Text(String(Playerscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(CPUScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
            }.foregroundColor(.white)
          
        }
        
       
       
    }
    @State   var playercard = "card7"
    @State var cpuCard = "card13"
    @State var Playerscore = 0
    @State var CPUScore = 0
    func Deal(){
        
       // Randomize the Player card
        var playercardvalue = Int.random(in: 2...14)
        playercard = "card"+String(playercardvalue)
        
       // Randomize the CPU card
        var cpuCardvalue = Int.random(in: 2...14)
        cpuCard = "card"+String(cpuCardvalue)
        
       //Update the score
        if playercardvalue > cpuCardvalue{
            Playerscore += 1
        }
        else if cpuCardvalue > playercardvalue{
            CPUScore += 1
        }
        else{
            
        }
    }
}

#Preview {
    ContentView()
}
