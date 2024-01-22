//
//  Item.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
