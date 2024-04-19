//
//  VisionDiceApp.swift
//  VisionDice
//
//  Created by Lucas Rasmusson on 2024-04-19.
//

import SwiftUI

@main
struct VisionDiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
