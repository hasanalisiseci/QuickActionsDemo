//
//  Quick_Actions_DemoApp.swift
//  Quick Actions Demo
//
//  Created by Hasan Ali Şişeci on 26.11.2023.
//

import SwiftUI

@main
struct Quick_Actions_DemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var phase

    var body: some Scene {
        WindowGroup {
            NavigationView {
                QuickActionsView()
            }
        }.onChange(of: phase) { oldPhase, newPhase in
            switch phase {
            case .background:
                addQuickActions()
            case .inactive:
                break
            case .active:
                break
            @unknown default:
                break
            }
        }
    }

    func addQuickActions() {
        UIApplication.shared.shortcutItems = [
            UIApplicationShortcutItem(type: "Home", localizedTitle: "Home", localizedSubtitle: "Go to Homepage", icon: UIApplicationShortcutIcon.init(type: .home)),
        ]
    }
}
