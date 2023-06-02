//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText : String
    var labelImage : String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .bold()
            Spacer()
            Image(systemName: labelImage)
        }

    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "", labelImage: "")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
