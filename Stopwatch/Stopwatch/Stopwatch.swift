//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Zidane Putra Fadilah on 8/11/23.
//

import Foundation

class Stopwatch: NSObject {
  var counter: Double
  var timer: Timer
  
  override init() {
    counter = 0.0
    timer = Timer()
  }
}
