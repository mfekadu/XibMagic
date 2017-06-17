//
//  ViewController.swift
//  XibMagic
//
//  Created by Michael & Joey on 6/15/17.
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
  
  
  var router: ViewControllerRouter!
  
  override func loadView() {
    super.loadView()
    // normally goes in configurator
    router = ViewControllerRouter()
    router.viewController = self // also goes in configurator
  }

// 
// this doesn't seem to be used if no Storyboard
  // resources
  // https://stackoverflow.com/questions/6436895/init-and-awakefromnib
  // https://developer.apple.com/documentation/uikit/uiviewcontroller
  // https://developer.apple.com/documentation/objectivec/nsobject
  // https://stackoverflow.com/questions/31993079/difference-between-awakefromnib-and-viewdidload-in-swift
  // loadView() ....
    // https://developer.apple.com/documentation/uikit/uiviewcontroller/1621454-loadview
    // https://stackoverflow.com/questions/37526411/instantiate-uiviewcontroller-programatically-without-nib
//
//  override func awakeFromNib()
//  {
//    super.awakeFromNib()
//    // normally goes in configurator
//    router = ViewControllerRouter()
//    router.viewController = self // also goes in configurator
//  }

  override func viewDidLoad() {
    super.viewDidLoad()
    doSetupViewModel()
  }
  
  func doSetupViewModel() {
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

