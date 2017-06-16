//
//  ViewPoop.swift
//  XibMagic
//
//  Created by Michael Fekadu on 6/15/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import UIKit

protocol ViewPoopOutput {
  func buttPressed()
}

class ViewPoop: UIView {
  
  var output: ViewPoopOutput!

  @IBAction func butt(_ sender: Any) {
    output.buttPressed()
  }
}
