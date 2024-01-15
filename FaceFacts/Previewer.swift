//
//  Previewer.swift
//  FaceFacts
//
//  Created by Weerawut Chaiyasomboon on 15/1/2567 BE.
//

import Foundation
import SwiftData

@MainActor
struct Previewer{
    let container: ModelContainer
    let event: Event
    let person: Person
    
    init() throws{
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        
        event = Event(name: "iOS dev conf", location: "Singapore")
        person = Person(name: "Amanda Yu", emailAddress: "amanda@email.com", details: "", metAt: event)
        
        container.mainContext.insert(person)
    }
}
