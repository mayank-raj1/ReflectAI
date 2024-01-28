//
//  User.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import Foundation

final class User: ObservableObject, Decodable, Encodable{
    var id = UUID()
    var firstName: String
    var lastName: String
    var dob: Date
    @Published var journal: Journal
    
    init(firstName: String, lastName: String, dob: Date, journal: Journal = Journal()) {
        self.firstName = first_Name
        self.lastName = last_Name
        self.dob = dob
        self.journal = journal
    }
    private enum CodingKeys: String, CodingKey {
        case id
        case firstName
        case lastName
        case dob
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        firstName = try container.decode(String.self, forKey: .first_name)
        lastName = try container.decode(String.self, forkey: .lastName)
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(entries, forKey: .entries)
    }
}
