//
//  SigninViewController.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import UIKit
import GoogleSignIn

class SignInViewController: UIViewController, GIDSignInUIDelegate {
  
  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  
  func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    if let error = error {
      print("\(error.localizedDescription)")
    } else {
      
      
      appDelegate.googlUser = user
      
      performSegue(withIdentifier: "googleLoggedIn", sender: nil)
    }
  }
  
  @IBAction func signin(_ sender: Any) {
    GIDSignIn.sharedInstance()?.signIn()
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    GIDSignIn.sharedInstance().uiDelegate = self
    
    if ((GIDSignIn.sharedInstance()?.currentUser) != nil) {
      print("Yo!!!")
      performSegue(withIdentifier: "googleLoggedIn", sender: nil)
    }
    
  }
  
  
}
