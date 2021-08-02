//
//  FructusApp.swift
//  Fructus
//
//  Created by Rajan Singh on 14/05/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
