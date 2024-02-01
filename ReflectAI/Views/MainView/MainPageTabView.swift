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
                JournalVIew().tabItem { Label("Lisjt", image: "person.fill") }
            }
        }.environmentObject(MocData.sampleJournal)
    }
}

#Preview {
    MainPageTabView()
}
