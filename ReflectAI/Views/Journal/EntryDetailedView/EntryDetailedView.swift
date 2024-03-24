//
//  EntryDetailedView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import SwiftUI

struct EntryDetailedView: View {
    @Bindable var entry: Entry
    @FocusState private var isfocused: Bool
    @Binding var makingEntry: Bool
    var body: some View {
        VStack{
            HStack{
                Button("Cancel") {
                    makingEntry = false
                }.font(.title3)
                Spacer()
                Label("\(entry.date.toString())", systemImage: "note.text").font(.title3)
                Spacer()
                Button("Done", action: {
                    makingEntry = false
                }).font(.title3)
            }.padding()
            ScrollView{
                ZStack(alignment: .leading){
                    TextEditor(text: $entry.entry)
                        .textEditorStyle(.automatic).focused($isfocused)
                        .lineSpacing(5).keyboardType(.default)
                    if entry.entry == "" {
                        Text("Start Entry...").foregroundStyle(.secondary)
                    }
                }
            }.padding()
            
        }.onAppear(perform: {
            isfocused.toggle()
        })
        
    }
}

#Preview {
    EntryDetailedView(entry: MocData.sampleEntry, makingEntry: .constant(true))
}
