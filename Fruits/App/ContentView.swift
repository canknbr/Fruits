//
//  ContentView.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    @State var isShowSettings = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
                            
                    }.listRowSeparator(.hidden)

                }
            }.listStyle(InsetListStyle())
              
            .navigationTitle("Fruits")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button {
                        isShowSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }

                }
            }
            .sheet(isPresented: $isShowSettings) {
                SettingsView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
