//
//  ContentView.swift
//  VisionDice
//
//  Created by Lucas Rasmusson on 2024-04-19.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {


    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var diceData : DiceData

    var body: some View {
        VStack {

            Text(diceData.rolledNumber == 0 ? "🎲": "\(diceData.rolledNumber)")
                .foregroundStyle(.yellow)
                .font(.custom("Menlo", size: 100))
                .bold()

        }
        .task{
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
