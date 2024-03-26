//
//  User.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import Foundation 
import SwiftData

@Model
final class User{
    var id: UUID
    var firstName: String = ""
    var lastName: String = ""
    var dob: Date = Date.now
    var entries: [Entry] = []
    
    init(id: UUID = UUID()) {
        self.id = id
    }
}
