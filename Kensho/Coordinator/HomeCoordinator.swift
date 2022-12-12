//
//  HomeCoordinator.swift
//  Kensho
//
//  Created by Hugo Silva on 12/12/22.
//

import UIKit
import SwiftUI

class HomeCoordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let view = HomeView(onSideViewCode: goToSideViewCode, onSideSwiftUI: goToSideSwiftUI)
      let vc = UIHostingController(rootView: view)
      self.navigationController.pushViewController(vc, animated: true)
   }
   
   private func goToSideViewCode() {
      let coordinator = SideViewCodeCoordinator(navigationController: self.navigationController)
      coordinator.start()
   }
   private func goToSideSwiftUI() {
      let coordinator = SideSwiftUICoordinator(navigationController: self.navigationController)
      coordinator.start()
   }
}
