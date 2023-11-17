//
//  ContentView.swift
//  DiceRoller
//
//  Created by Jessica Soares on 17/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice") {
                    numberOfDice -= 1
                }
                
                Button("Add Dice") {
                    numberOfDice += 1
                }
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
