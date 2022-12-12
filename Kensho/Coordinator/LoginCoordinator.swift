//
//  LoginCoordinator.swift
//  Kensho
//
//  Created by Hugo Silva on 12/12/22.
//

import UIKit
import SwiftUI

class LoginCoordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let viewController = LoginVC()
      viewController.onLogin = { name in
         self.goToHome(name: name)
      }
      self.navigationController.pushViewController(viewController, animated: true)
   }
   
   private func goToHome(name: String){
      let coordinator = HomeCoordinator(navigationController: self.navigationController)
      coordinator.start(name: name)
   }
}
