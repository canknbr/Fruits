//
//  FruitCardView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct FruitCardView: View {
    let fruit : Fruit
    @State var isAnimated = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 8)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [fruit.gradientColors[0],fruit.gradientColors[1]]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
    }
}
