//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Rajan Singh on 17/05/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrientName = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrientName.count, id: \.self) { item in
                    Divider().padding(.vertical, 3)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrientName[item])
                        }
                        .foregroundColor(fruit.gradientColors.first!)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
