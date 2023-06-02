//
//  SettingsRow.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct SettingsRow: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                    }
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                }
            }
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRow(name: "", content: "")
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
