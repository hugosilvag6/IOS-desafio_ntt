//
//  VCfromSideMenu.swift
//  Kensho
//
//  Created by Hugo Silva on 07/12/22.
//

import UIKit

class SideViewCode: UIViewController {
   
   private lazy var backButton: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Pop ViewController", for: .normal)
      bt.backgroundColor = .white
      bt.layer.cornerRadius = 10
      bt.setTitleColor(.purple, for: .normal)
      bt.addTarget(self, action: #selector(handleBackButton), for: .touchUpInside)
      return bt
   }()
   
   // MARK: - Lifecycle
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view.backgroundColor = .purple
      configureUI()
   }
   
   // MARK: - Selectors
   @objc func handleBackButton() {
      navigationController?.popViewController(animated: true)
   }
   
   // MARK: - Helpers
   private func configureUI() {
      self.configureBackButton()
   }
}

extension SideViewCode {
   func configureBackButton() {
      self.view.addSubview(backButton)
      NSLayoutConstraint.activate([
         backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
      ])
   }
}
