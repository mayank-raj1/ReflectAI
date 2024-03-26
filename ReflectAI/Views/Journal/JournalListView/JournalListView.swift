//
//  JournalListView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import SwiftUI
import SwiftData

struct JournalListView: View {
    
    var body: some View {
        List($journal.entries) { entry in
            EntryListView(entry: entry.wrappedValue)
        }.listStyle(.plain)
    }
}
