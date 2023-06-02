//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit : Fruit
    let nutrients : [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup {
                ForEach(0..<nutrients.count,id: \.self) {item in
                    Divider()
                        .padding(.vertical,2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body,design: .rounded))
                        .bold()
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            } label: {
                Text("Nutritional value per 100g")
            }

        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit:fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
