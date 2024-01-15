//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Weerawut Chaiyasomboon on 14/1/2567 BE.
//

import SwiftUI
import SwiftData

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self) //created and load SwiftData
    }
}
