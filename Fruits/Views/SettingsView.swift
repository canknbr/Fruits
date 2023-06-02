//
//  SettingsView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnBoarding") var isOnBoarding = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(10)
                            Spacer()
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                                .lineLimit(4)
                                .truncationMode(.tail)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    }

                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the app by toggle the swtich in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 10)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .bold()
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .bold()
                                    .foregroundColor(.gray)
                            }
                        }

                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }
                    GroupBox {
                        SettingsRow(name: "Developer", content: "Can Kanbur")
                        SettingsRow(name: "Designer", content: "John Petras")
                        SettingsRow(name: "Compability", content: "iOS 14")
                        SettingsRow(name: "Website", linkLabel: "Google", linkDestination: "google.com")
                        SettingsRow(name: "Twitter", linkLabel: "@rbnknc", linkDestination: "twitter.com/rbnknc")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                }

            }.navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                        .padding()
                        .padding(.trailing, 20)
                    }
                })
                .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
