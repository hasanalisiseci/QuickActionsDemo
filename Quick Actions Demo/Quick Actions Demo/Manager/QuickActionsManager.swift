//
//  QuickActionsManager.swift
//  Quick Actions Demo
//
//  Created by Hasan Ali Şişeci on 27.11.2023.
//

import SwiftUI

class QuickActionsManager: ObservableObject {
    static let instance = QuickActionsManager()
    @Published var quickAction: QuickAction? = nil

    func handleQaItem(_ item: UIApplicationShortcutItem) {
        print(item)
        if item.type == "SearchAction" {
            quickAction = .search
        } else if item.type == "Home" {
            quickAction = .home
        }
    }
}

enum QuickAction: Hashable {
    case search
    case home
}
