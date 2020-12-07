//
//  FoodScreen.swift
//  TestSwiftUI
//
//  Created by Момотов Евгений Олегович on 04.12.2020.
//

import SwiftUI

struct FoodScreen: View {
    let food: Food
    
    var body: some View {
        Text(food.name).font(.title3)
    }
}

struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodScreen(food: Food(name: ""))
    }
}
