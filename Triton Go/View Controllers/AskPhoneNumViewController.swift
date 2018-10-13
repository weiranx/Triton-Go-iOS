//
//  AskPhoneNumViewController.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/13/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import UIKit
import PhoneNumberFormatter

class AskPhoneNumViewController: UIViewController, UITextFieldDelegate  {

  @IBOutlet weak var promptLabel: UILabel!
  
  @IBOutlet weak var phoneNumInput: UITextField!
  

  
  
  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    phoneNumInput.delegate = self
    
    let firstName = appDelegate.googlUser?.profile.givenName ?? "New User"
    promptLabel.text = "Hey, \(firstName). We need some more infomation about you"
    
  }
  
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    if (textField.text?.range(of: "\\(?([0-9]{3})\\)?([ .-]?)([0-9]{3})\\2([0-9]{4})", options: .regularExpression, range: nil, locale: nil) == nil) {
      // wrong phone number
      let alert = UIAlertController(title: "Invalid Phone Number", message: "Please enter a valid phone number", preferredStyle: .alert)
      let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil) 
      alert.addAction(alertAction)
      present(alert, animated: true, completion: nil)
      return true
    }
    
    let formatter = PhoneNumberFormatter()
    let formattedNum = formatter.string(for: textField.text ?? "")
    
    print("\(formattedNum)")

    
    return true
  }
  
  
}
