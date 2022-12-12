//
//  LoginVC.swift
//  Kensho
//
//  Created by Hugo Silva on 07/12/22.
//

import SwiftUI
import UIKit

class LoginVC: UIViewController {
   
   
   // MARK: - Properties
   @ObservedObject var viewModel = ViewModel()
   var onLogin: ((String) -> Void)?
   
   private lazy var infoLabel: UILabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "O texto abaixo será mostrado como nome no campo: 'Olá _, como está hoje?' "
      lb.numberOfLines = 0
      lb.font = .systemFont(ofSize: 20)
      return lb
   }()
   private lazy var nameTextField: UITextField = {
      let tf = UITextField()
      tf.translatesAutoresizingMaskIntoConstraints = false
      tf.backgroundColor = .white
      tf.placeholder = "Digite seu nome"
      tf.textColor = .darkGray
      tf.layer.borderColor = UIColor.black.cgColor
      tf.layer.borderWidth = 2
      tf.layer.cornerRadius = 10
      tf.textAlignment = .center
      return tf
   }()
   private lazy var navigationButton: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Push na Home SwiftUI", for: .normal)
      bt.backgroundColor = UIColor(named: "ThemeGreen")
      bt.addTarget(self, action: #selector(handleNavigation), for: .touchUpInside)
      bt.layer.cornerRadius = 10
      return bt
   }()

   // MARK: - Lifecycle
   override func viewDidLoad() {
      super.viewDidLoad()
      configureUI()
   }
   
   // MARK: - Selectors
   @objc func handleNavigation() {
      guard let name = nameTextField.text else { return }
      self.onLogin?(name)
   }
   
   // MARK: - Helpers
   func configureUI() {
      view.backgroundColor = .white
      self.setupNavigationButton()
      self.setupNameTextfield()
      self.setupInfoLabel()
   }
}

extension LoginVC {
   private func setupNavigationButton() {
      view.addSubview(self.navigationButton)
      NSLayoutConstraint.activate([
         navigationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         navigationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         navigationButton.heightAnchor.constraint(equalToConstant: 40),
         navigationButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      ])
   }
   private func setupNameTextfield() {
      view.addSubview(self.nameTextField)
      NSLayoutConstraint.activate([
         nameTextField.bottomAnchor.constraint(equalTo: navigationButton.topAnchor, constant: -20),
         nameTextField.leadingAnchor.constraint(equalTo: navigationButton.leadingAnchor),
         nameTextField.trailingAnchor.constraint(equalTo: navigationButton.trailingAnchor),
         nameTextField.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   private func setupInfoLabel() {
      view.addSubview(self.infoLabel)
      NSLayoutConstraint.activate([
         infoLabel.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -20),
         infoLabel.leadingAnchor.constraint(equalTo: navigationButton.leadingAnchor),
         infoLabel.trailingAnchor.constraint(equalTo: navigationButton.trailingAnchor)
      ])
   }
}

class ViewModel: ObservableObject {
   @Published var name = "Hugo"
}

