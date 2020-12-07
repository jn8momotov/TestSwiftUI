//
//  SettingsView.swift
//  TestSwiftUI
//
//  Created by Момотов Евгений Олегович on 04.12.2020.
//

import SwiftUI

struct SettingsScreen: View {
    @State var showModal = false
    
    var body: some View {
        Button(action: {
            self.showModal = true
        }, label: {
            Text("Show modal screen")
                .padding()
        })
        .sheet(isPresented: $showModal) {
            ModalScreen()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
