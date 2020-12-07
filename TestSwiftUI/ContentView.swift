//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Момотов Евгений Олегович on 03.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var selectionTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectionTab) {
            HomeScreen(selectionTab: $selectionTab)
                .tabItem {
                    Text("Home")
                }
                .tag(0)
            SearchScreen()
                .tabItem {
                    Text("Search")
                }
                .tag(1)
            SettingsScreen()
                .tabItem {
                    Text("Settings")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
