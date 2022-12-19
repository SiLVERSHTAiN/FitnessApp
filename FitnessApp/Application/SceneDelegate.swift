//
//  SceneDelegate.swift
//  FitnessApp
//
//  Created by Aleksandr on 19.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarController = TabBarController()
        
        guard let windowScene = scene as? UIWindowScene else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds) // Присваиваем сцену в рамках того экрана который будет получен
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}

