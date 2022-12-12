//
//  SideViewCodeCoordinator.swift
//  Kensho
//
//  Created by Hugo Silva on 12/12/22.
//

import UIKit
import SwiftUI

class SideViewCodeCoordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let vc = SideViewCode()
      self.navigationController.pushViewController(vc, animated: true)
   }
}
