//
//  FruitsApp.swift
//  Fruits
//
//  Created by Can Kanbur on 2.06.2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnBoardingView()
            }
            else
            {
                ContentView()
            }
        }
    }
}
