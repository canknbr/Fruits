//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit : Fruit
    @State var isAnimating = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.2), radius: 8, x: 8, y: 8)
                .scaleEffect(isAnimating ? 1 : 0.5)
                .padding(.vertical,20)
            
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
