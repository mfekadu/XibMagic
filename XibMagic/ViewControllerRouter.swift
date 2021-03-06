//
//  ViewControllerRouter.swift
//  XibMagic
//
//  Created by Michael & Joey on 6/15/17.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ViewControllerRouterInput
{
  func navigateToSomewhere()
}

class ViewControllerRouter: ViewControllerRouterInput
{
  weak var viewController: ViewController!

  // MARK: - Navigation

  func navigateToSomewhere()
  {
    // 3. Ask the navigation controller to push another view controller onto the stack
    let someVC = SomeOtherVC()
    viewController.navigationController?.pushViewController(someVC, animated: true)
  }

  // MARK: - Communication

  func passDataToNextScene(segue: UIStoryboardSegue)
  {
    // NOTE: Teach the router which scenes it can communicate with

    if segue.identifier == "ShowSomewhereScene" {
      passDataToSomewhereScene(segue: segue)
    }
  }

  func passDataToSomewhereScene(segue: UIStoryboardSegue)
  {
    // NOTE: Teach the router how to pass data to the next scene

    // let someWhereViewController = segue.destinationViewController as! SomeWhereViewController
    // someWhereViewController.output.name = viewController.output.name
  }
}
