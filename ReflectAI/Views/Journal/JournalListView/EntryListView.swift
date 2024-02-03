//
//  EntryListView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import SwiftUI

struct EntryListView: View {
    var entry: Entry
    @State private var isShowingFullEntry = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0).foregroundStyle(.background)
            VStack(alignment: .leading) {
                Text(entry.heading).font(.title3).fontWeight(.medium).padding(.bottom, 5)
                Text(entry.entry).lineLimit(isShowingFullEntry ? .max : 3).lineSpacing(5)
                Divider()
                Text(entry.date.formated()).font(.caption).foregroundStyle(.secondary)
            }.padding()
        }
        .padding(5)

        .shadow(radius: 10)
        .onTapGesture(perform: {
            isShowingFullEntry.toggle()
        })

    }
}

#Preview {
    EntryListView(entry: MocData.sampleEntry)
}
