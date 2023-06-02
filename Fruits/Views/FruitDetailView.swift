//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        FruitNutrientsView(fruit: fruit)

                        Text("Learn about \(fruit.title)".uppercased())
                            .bold()
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }

                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }

            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
