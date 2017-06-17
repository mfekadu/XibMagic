//
//  AppDelegate.swift
//  XibMagic
//
//  Created by Michael & Joey on 6/15/17.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.makeKeyAndVisible()
    
    let vc = ViewController()
    
    let nav = UINavigationController(rootViewController: vc)

    window?.rootViewController = nav
    return true
  }
}

