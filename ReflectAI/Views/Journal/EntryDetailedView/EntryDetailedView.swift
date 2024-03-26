//
//  EntryDetailedView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import SwiftUI
import SwiftData

struct EntryDetailedView: View {
    @Bindable var entry: Entry = Entry()
    @FocusState private var isfocused: Bool
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .leading){
                TextEditor(text: $entry.entry)
                        .textEditorStyle(.automatic).focused($isfocused)
                        .lineSpacing(5).keyboardType(.default)
                if entry.entry == "" {
                    Text("Start Entry...").foregroundStyle(.secondary)
                }
            }
        }
        .padding()
        .onAppear(perform: {isfocused.toggle()})
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel", action: {})
            }
            ToolbarItem(placement: .principal) {
                Label("\(entry.date.toString())", systemImage: "note.text").font(.title3)
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save", action: {done()})
            }
        }
    }
    
    func done(){
        //user.entries.append(entry)
        //dissmiss()
    }
}

#Preview {
    EntryDetailedView()
}
