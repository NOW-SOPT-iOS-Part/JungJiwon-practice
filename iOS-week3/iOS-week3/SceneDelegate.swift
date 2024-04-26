//
//  SceneDelegate.swift
//  iOS-week3
//
//  Created by  정지원 on 2024/04/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        let chatViewController = UINavigationController(rootViewController: ChatViewController())
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }

}

