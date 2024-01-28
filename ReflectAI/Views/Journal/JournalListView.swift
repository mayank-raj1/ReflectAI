//
//  JournalListView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import SwiftUI

struct JournalListView: View {
    @EnvironmentObject var journal: Journal
    var body: some View {
        ForEach(journal.entries) { entry in
            EntryListView(entry: entry)
        }
    }
}


#Preview {
    JournalListView().environmentObject(MocData.sampleJournal)
}
