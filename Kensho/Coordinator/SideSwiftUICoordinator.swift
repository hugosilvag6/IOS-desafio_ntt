//
//  SideSwiftUICoordinator.swift
//  Kensho
//
//  Created by Hugo Silva on 12/12/22.
//

import UIKit
import SwiftUI

class SideSwiftUICoordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let view = SideSwiftUI()
      let vc = UIHostingController(rootView: view)
      self.navigationController.pushViewController(vc, animated: true)
   }
}
