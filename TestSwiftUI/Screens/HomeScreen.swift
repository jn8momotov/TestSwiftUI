//
//  HomeView.swift
//  TestSwiftUI
//
//  Created by Момотов Евгений Олегович on 04.12.2020.
//

import SwiftUI

struct HomeScreen: View {
    @Binding var selectionTab: Int
    
    var body: some View {
        Button("Show second tab") {
            selectionTab = 1
        }
    }
}
