//
//  JournalVIew.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-02-01.
//

import SwiftUI

struct JournalVIew: View {
    @State var isAddingEntry: Bool = false
    var entries: [Entry] = []
    
    
    var body: some View {
        VStack{
            JournalListView()
        }.overlay(alignment: .bottom, content: {
            Button(action: {
                isAddingEntry = true
            }, label: {
                Image(systemName: "plus").dynamicTypeSize(.xxxLarge).padding(10)
            }).buttonStyle(.borderedProminent).buttonBorderShape(.circle)
        })
        .sheet(isPresented: $isAddingEntry, content: {
            //EntryDetailedView(entry: journal.newEntry, makingEntry: $isAddingEntry)
        })
    }
}

#Preview {
    JournalVIew()
}
