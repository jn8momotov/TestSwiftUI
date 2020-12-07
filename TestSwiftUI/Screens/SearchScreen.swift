//
//  SearchView.swift
//  TestSwiftUI
//
//  Created by Момотов Евгений Олегович on 04.12.2020.
//

import SwiftUI

struct Food: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}

struct SearchScreen: View {
    private let foods = [
        Food(name: "Гречка"),
        Food(name: "Рис"),
        Food(name: "Борщ"),
        Food(name: "Цезарь"),
        Food(name: "Пицца"),
        Food(name: "Доширак")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(foods) { food in
                    NavigationLink(destination: FoodScreen(food: food)) {
                        Text(food.name)
                    }
                }
            }
            .navigationTitle("Search")
        }
    }
}
