//
//  Journal.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import Foundation
import SwiftUI

final class Journal: ObservableObject, Codable{
    @Published var entries: [Entry]
    
    init(entries: [Entry] = []) {
        self.entries = entries
    }
    
    private enum CodingKeys: String, CodingKey {
            case entries        }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        entries = try container.decode([Entry].self, forKey: .entries)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(entries, forKey: .entries)
    }
    
    func addEntry(entry: Entry) -> Void {
        if (!self.entries.contains(where: { en in
            return en == entry
        })){
            entries.append(entry)
        }
    }
    
    var newEntry: Entry {
        return Entry()
    }
}
