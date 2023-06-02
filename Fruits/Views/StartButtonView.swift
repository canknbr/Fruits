//
//  StartButtonView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnBoarding") var isOnBoarding : Bool?
    var body: some View {
        Button {
            isOnBoarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "chevron.right.circle")
                    .imageScale(.large)
            }
            .foregroundColor(.white)
         
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1)
        )
        .tint(.accentColor)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
