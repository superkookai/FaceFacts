//
//  Person.swift
//  FaceFacts
//
//  Created by Weerawut Chaiyasomboon on 14/1/2567 BE.
//

import Foundation
import SwiftData

@Model //this is macro -> Make properties of the class be persistented
class Person{
    var name: String
    var emailAddress: String
    var details: String
    var metAt: Event?
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, emailAddress: String, details: String, metAt: Event? = nil) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
        self.metAt = metAt
    }
}
