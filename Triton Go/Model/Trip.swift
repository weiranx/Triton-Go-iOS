//
//  Trip.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import Foundation

class Trip {
  
  var driver: User
  var origin: Location
  var dest: Location
  var date: Date
  
  init(driver: User, origin: Location, dest: Location, date: Date) {
    self.driver = driver
    self.origin = origin
    self.dest = dest
    self.date = date
  }
  
}
