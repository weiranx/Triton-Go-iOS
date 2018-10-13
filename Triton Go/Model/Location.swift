//
//  Location.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import Foundation
import HashBuilder

class Location {
  
  var id: UInt
  
  var lang: Double
  var long: Double
  var streetName: String
  
  init(lang: Double, long: Double, streetName: String) {
    self.lang = lang
    self.long = long
    self.streetName = streetName
    
    // building id
    let builder = HashBuilder()
    builder.contributeObject(lang)
    builder.contributeObject(long)
    builder.contributeObject(streetName)
    
    self.id = builder.builtHash
  }
  
}
