//
//  SceneDelegate.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 18/10/2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        
        guard let windowScene = (scene as? UIWindowScene) else { return }
    
        
        let episodeViewController = EpisodeViewController()
        let castViewController = CastViewController()
        let factionViewController = FactionViewController()
        let settingsViewController = SettingsViewController()

        
        episodeViewController.tabBarItem = UITabBarItem.init(title: "Temporadas", image: UIImage.init(systemName: "film.fill" ), tag: 0)
        castViewController.tabBarItem = UITabBarItem.init(title: "Casting", image: UIImage.init(systemName: "person.3.fill" ), tag: 1)
        factionViewController.tabBarItem = UITabBarItem.init(title: "Facciones", image: UIImage.init(systemName: "shield.lefthalf.fill" ), tag: 1)
        settingsViewController.tabBarItem = UITabBarItem.init(title: "Ajustes", image: UIImage.init(systemName: "gear" ), tag: 3)
        
        
        let navigationEpisodeViewController = UINavigationController.init(rootViewController: episodeViewController)
        let navigationCastViewController = UINavigationController.init(rootViewController: castViewController)
        let navigationFactionViewController = UINavigationController.init(rootViewController: factionViewController)
        let navigationSettingsViewController = UINavigationController.init(rootViewController: settingsViewController)
        
        
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationEpisodeViewController, navigationCastViewController, navigationFactionViewController, navigationSettingsViewController]
        
        
        
        tabBarController.tabBar.barStyle = .black
        tabBarController.tabBar.isTranslucent = true
        tabBarController.tabBar.tintColor = UIColor.init(red: 235/255.0, green: 172/255.0, blue: 38/255.0, alpha: 1.0 )
        
        UINavigationBar.appearance().overrideUserInterfaceStyle = .dark
        UINavigationBar.appearance().tintColor = UIColor.init(red: 235/255.0, green: 172/255.0, blue: 38/255.0, alpha: 1.0 )

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    
    }

    func sceneWillResignActive(_ scene: UIScene) {
    
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

