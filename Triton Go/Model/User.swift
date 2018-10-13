//
//  User.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import Foundation
import MapKit
import HashBuilder

class User {
  
  var id: UInt
  
  var name: String
  var email: String
  var phoneNum: String
  var homeAddress: Location
  
  init(name: String, email: String, phoneNum: String, homeAddress: Location) {
    self.name = name
    self.email = email
    self.phoneNum = phoneNum
    self.homeAddress = homeAddress
    
    // building id
    let builder = HashBuilder()
    builder.contributeObject(name)
    builder.contributeObject(email)
    builder.contributeObject(phoneNum)
    builder.contributeObject(homeAddress)
    
    self.id = builder.builtHash
    
  }
  
}
