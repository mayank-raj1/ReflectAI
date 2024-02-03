//
//  MainPageTabView.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import SwiftUI

struct MainPageTabView: View {
    var body: some View {
        VStack{
            TabView{
                JournalVIew().tabItem {
                    Text("Entries")
                    Image(systemName: "note.text")
                }
                AccountView().tabItem {
                    Text("Account")
                    Image(systemName: "person")
                }
            }.tabViewStyle(.page)
        }
        .environmentObject(MocData.sampleJournal)
    }
}

#Preview {
    MainPageTabView()
}
