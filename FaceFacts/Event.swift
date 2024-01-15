//
//  Event.swift
//  FaceFacts
//
//  Created by Weerawut Chaiyasomboon on 14/1/2567 BE.
//

import Foundation
import SwiftData

@Model
class Event{
    var name: String
    var location: String
    var people = [Person]()
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
