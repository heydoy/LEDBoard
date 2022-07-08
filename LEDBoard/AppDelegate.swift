//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by Doy Kim on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // sleep(3)
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // e.g. Youtube, Melon - 프리미엄 결제됐으면 play, 아니면 일시정지
        // e.g. 금융, 카드앱 - 백그라운드에 들어갔을 때 화면을 추가로 씌우거나 해서 안 보이게 함 (정보보호)

    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // e.g. Youtube - 일반 사용자에게 프리미엄 결제를 유도하는 팝업을 띄울 수 있게
        // e.g. Kakaotalk - 잠금화면을 띄워 비밀번호를 입력하도록
    }
    
    
    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

