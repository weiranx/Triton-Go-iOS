//
//  AppDelegate.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import UIKit
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
  
  func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    if let error = error {
      print("\(error.localizedDescription)")
    } else {

    }
  }

  

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    // Initialize sign-in
    GIDSignIn.sharedInstance().clientID = "565347794333-a4dsnk478v5356d11c925t37qs4f3s2e.apps.googleusercontent.com"
    GIDSignIn.sharedInstance().delegate = self
    
    return true
  }



}

