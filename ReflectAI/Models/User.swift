//
//  User.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import Foundation

final class User: ObservableObject, Codable{
    var id: UUID
    var firstName: String
    var lastName: String
    var dob: Date
    @Published var journal: Journal
    
    init(id: UUID = UUID(), firstName: String, lastName: String, dob: Date, journal: Journal = Journal()) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.dob = dob
        self.journal = journal
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case firstName
        case lastName
        case dob
        case journal
    }
    
    required init(from decoder: Decoder) throws {
        let containter = try decoder.container(keyedBy: CodingKeys.self)
        id = try containter.decode(UUID.self, forKey: .id)
        firstName = try containter.decode(String.self, forKey: .firstName)
        lastName = try containter.decode(String.self, forKey: .lastName)
        dob = try containter.decode(Date.self, forKey: .dob)
        journal = try containter.decode(Journal.self, forKey: .journal)
    }
    
    func encode(to encoder: Encoder) throws{
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(dob, forKey: .dob)
        try container.encode(journal, forKey: .journal)
    }
}
