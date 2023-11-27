//
//  SceneDelegate.swift
//  Quick Actions Demo
//
//  Created by Hasan Ali Şişeci on 28.11.2023.
//

import UIKit

class CustomSceneDelegate: UIResponder, UIWindowSceneDelegate {
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        QuickActionsManager.instance.handleQaItem(shortcutItem)
    }
}
