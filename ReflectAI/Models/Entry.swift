//
//  Entry.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Entry: Identifiable, Hashable, Codable, ObservableObject{
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id: UUID
    var date: Date = Date.now
    var entry: String = ""
    var heading: String = ""
    
    init() {
        id = UUID()
    }
    
    init(heading: String, entry: String) {
        self.entry = entry
        self.heading = heading
        id = UUID()
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case date
        case entry
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.date = try container.decode(Date.self, forKey: .date)
        self.entry = try container.decode(String.self, forKey: .entry)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(date, forKey: .date)
        try container.encode(entry, forKey: .entry)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(date)
        hasher.combine(entry)
    }
}
