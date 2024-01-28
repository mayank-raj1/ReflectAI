//
//  Entry.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import Foundation
import SwiftUI

final class Entry: ObservableObject, Codable{
    let id: UUID
    var date: Date
    @Published var entry: String
    
    init(id: UUID = UUID(), date: Date = Date(), entry: String) {
        self.id = id
        self.date = date
        self.entry = entry
    }
    
    private enum CodingKeys: String, CodingKey {
            case id
            case date
            case entry
        }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        date = try container.decode(Date.self, forKey: .date)
        entry = try container.decode(String.self, forKey: .entry)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(date, forKey: .date)
        try container.encode(entry, forKey: .entry)
    }
}

struct MocData{
    static var e1 = Entry(entry: "")
}
var entry = "Yo, diary! Today was kinda all over the place. Woke up late, missed the bus, so I had to sprint like I'm in a marathon. Got to work, and, surprise, surprise, my coffee mug was MIA. Borrowed one from the office kitchen; hope it's not someone's favorite. Work was a rollercoaster. Meetings, emails, more meetings—felt like I needed a clone. Had a mini-heart attack when I thought I lost that crucial document, but found it hiding in the Downloads abyss. Phew! Lunch was a sad sandwich at my desk. Forgot to pack something better. Evening plans were in shambles too. Tried a new recipe for dinner, but I'm pretty sure my spaghetti carbonara looked more like abstract art. A friend called, said they were in town, so I scrambled to meet up. Spent the evening reminiscing and laughing till my sides hurt. Home now, tired but content. The messy living room can wait; Netflix is calling. Gotta catch up on that series everyone's raving about. Note to self: buy more coffee mugs; the office thieves strike again. Signing off, Diary! Tomorrow's another circus, but hey, that's life, right?"
