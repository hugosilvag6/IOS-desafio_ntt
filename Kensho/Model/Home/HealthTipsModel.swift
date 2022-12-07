//
//  HealthTipsModel.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HealthTipItem: Identifiable {
   var id = UUID().uuidString
   let image: Image
   let title: String
   let subtitle: String
   let date: String
   
   init(image: Image, title: String, subtitle: String, date: String) {
      self.image = image
      self.title = title
      self.subtitle = subtitle
      self.date = date
   }
}

let HealthTipsData: [HealthTipItem] = [
   .init(image: Image("HealthTipsImage"), title: "Ocitocina: O Hormônio do Amor", subtitle: "hormônio responsável por diferentes funções no noss...", date: "04/10/22 às 12:23"),
   .init(image: Image("HealthTipsImage"), title: "Ocitocina: O Hormônio do Amor", subtitle: "hormônio responsável por diferentes funções no noss...", date: "04/10/22 às 12:23"),
   .init(image: Image("HealthTipsImage"), title: "Ocitocina: O Hormônio do Amor", subtitle: "hormônio responsável por diferentes funções no noss...", date: "04/10/22 às 12:23"),
   .init(image: Image("HealthTipsImage"), title: "Ocitocina: O Hormônio do Amor", subtitle: "hormônio responsável por diferentes funções no noss...", date: "04/10/22 às 12:23"),
   .init(image: Image("HealthTipsImage"), title: "Ocitocina: O Hormônio do Amor", subtitle: "hormônio responsável por diferentes funções no noss...", date: "04/10/22 às 12:23"),
]
