//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Micah Jesse Njeru on 18/05/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
