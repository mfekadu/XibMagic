//
//  ViewController.swift
//  XibMagic
//
//  Created by Michael Fekadu on 6/15/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import UIKit

protocol ViewControllerInput: ViewPoopOutput {
  func buttPressed()
}

extension ViewController: ViewControllerInput {
  func buttPressed() {
    // do nav to ButtRouter
    print("buttPressed called")
    router.navigateToSomewhere()
  }
}

class ViewController: UIViewController {
  
  // normally goes in configurator
  var router: ViewControllerRouter! = ViewControllerRouter()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    router.viewController = self // also goes in configurator
    
    if let viewPoop = Bundle.main.loadNibNamed("ViewPoop", owner: self, options: nil)?.first as? ViewPoop {
      
      viewPoop.backgroundColor = UIColor.cyan
      
      viewPoop.output = self
      
      self.view.addSubview(viewPoop)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  

}

