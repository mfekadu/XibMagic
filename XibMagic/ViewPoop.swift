//
//  ViewPoop.swift
//  XibMagic
//
//  Created by Michael & Joey on 6/15/17.
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
