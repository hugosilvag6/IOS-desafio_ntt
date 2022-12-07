//
//  HomeRemindersModel.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HomeReminderContainer: Identifiable {
   let id = UUID().uuidString
   let number: String
   let title: String
   var items: [HomeReminderItem]
   
   init(number: String, title: String, items: [HomeReminderItem]) {
      self.number = number
      self.title = title
      self.items = items
   }
}

struct HomeReminderItem: Identifiable {
   let id = UUID().uuidString
   let date: String
   let title: String
   let subtitle: String
   
   init(date: String, title: String, subtitle: String) {
      self.date = date
      self.title = title
      self.subtitle = subtitle
   }
}


let HomeReminderData: [HomeReminderContainer] = [
   .init(number: "02", title: "Medicamentos do dia", items: [.init(date: "07/09/22 - 14:00", title: "Glifage", subtitle: "Posologia: 3 comprimidos"),
                                                             .init(date: "07/09/22 - 14:00", title: "Glifage", subtitle: "Posologia: 3 comprimidos")]),
   .init(number: "03", title: "Próximas consultas", items: [.init(date: "07/09/22 - 14:00", title: "Clínico Geral", subtitle: "Hospital Samaritano - Av. Brigadeiro Luiz Antonio, 1895"),
                                                            .init(date: "07/09/22 - 14:00", title: "Ginecologista", subtitle: "Hospital Samaritano - Av. Brigadeiro Luiz Antonio, 1895"),
                                                            .init(date: "07/09/22 - 14:00", title: "Ginecologista", subtitle: "Hospital Samaritano - Av. Brigadeiro Luiz Antonio, 1895")])
]
