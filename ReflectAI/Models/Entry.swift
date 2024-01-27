//
//  Entry.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import Foundation
import SwiftUI

final class Entry: ObservableObject{
    let id = UUID()
    var date: Date
    @Published var entry: String = ""
    
    init(date: Date = Date(), entry: String) {
        self.date = date
        self.entry = entry
    }
}

struct MocData{
    static var e1 = Entry(entry: "Njsbhdv \n km /ne wefdw")
}
