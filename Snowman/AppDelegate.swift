//
//  AppDelegate.swift
//  Snowman
//
//  Created by Nick Rogers on 3/6/23.
//

import UIKit
import BranchSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var linkProperties: BranchLinkProperties?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        BranchScene.shared().initSession(launchOptions: launchOptions) { params, error, scene in
            if let error = error {
                print(error)
            }
            else {
                // Doesn't capture custom link data
                self.linkProperties = BranchLinkProperties.getFrom(params)
                print(params)
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

