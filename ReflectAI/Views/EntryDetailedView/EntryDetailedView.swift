//
//  EntryDetailedView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-27.
//

import SwiftUI

struct EntryDetailedView: View {
    @ObservedObject var entry: Entry
    
    var body: some View {
        VStack{
            TextEditor(text: $entry.entry)
            Button("Print") {
                print(entry.entry)
            }
        }
        
    }
}

#Preview {
    EntryDetailedView(entry: MocData.e1)
}
