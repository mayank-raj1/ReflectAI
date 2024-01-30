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
            VStack(alignment: .leading) {
                Text(entry.heading).font(.title3).fontWeight(.medium).padding(.bottom, 5)
                Text(entry.entry).lineLimit(isShowingFullEntry ? .max : 3).lineSpacing(5)
                Divider().padding([.leading, .trailing])
                Text(entry.date.formated()).font(.caption)
            }
            .padding()
            .clipShape(.rect(cornerRadius: 10), style: FillStyle())
            .onTapGesture {
                isShowingFullEntry.toggle()
            }

    }
}

#Preview {
    EntryListView(entry: MocData.sampleEntry)
}
