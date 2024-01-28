//
//  Entry.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import Foundation
import SwiftUI

final class Entry: ObservableObject, Codable, Identifiable{
    let id: UUID
    var date: Date
    var heading: String
    @Published var entry: String
    
    init(id: UUID = UUID(), date: Date = Date(), entry: String, heading: String = "Morning Outage to meh") {
        self.id = id
        self.date = date
        self.heading = heading
        self.entry = entry
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case date
        case heading
        case entry
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        date = try container.decode(Date.self, forKey: .date)
        heading = try container.decode(String.self, forKey: .heading)
        entry = try container.decode(String.self, forKey: .entry)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(date, forKey: .date)
        try container.encode(heading, forKey: .heading)
        try container.encode(entry, forKey: .entry)
    }
}
