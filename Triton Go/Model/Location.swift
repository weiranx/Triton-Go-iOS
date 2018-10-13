//
//  Location.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import Foundation

class Location {
  
  var lang: Double
  var long: Double
  var streetName: String
  
  init(lang: Double, long: Double, streetName: String) {
    self.lang = lang
    self.long = long
    self.streetName = streetName
  }
  
}
