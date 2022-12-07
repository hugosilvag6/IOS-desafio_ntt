//
//  FastGuideModel.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct FastGuideItem: Identifiable {
   var id = UUID().uuidString
   let color: Color
   let image: Image
   let text: String
   
   init(color: Color, image: Image, text: String) {
      self.color = color
      self.image = image
      self.text = text
   }
}

let FastGuideData: [FastGuideItem] = [
   .init(color: Color("FastGuideYellow"), image: Image("FastGuideMedicao"), text: "Adicionar medição"),
   .init(color: Color("FastGuideDarkPurple"), image: Image("FastGuideConsultas"), text: "Adicionar consultas"),
   .init(color: Color("FastGuideBlue"), image: Image("FastGuideMedicamento"), text: "Adicionar medicamento"),
   .init(color: Color("FastGuideOrange"), image: Image("FastGuideSaude"), text: "Dicas de saúde"),
   .init(color: Color("FastGuideLightPurple"), image: Image("FastGuideCuidado"), text: "Plano de cuidado"),
   .init(color: Color("FastGuideYellow"), image: Image("FastGuideMedicao"), text: "Adicionar medição"),
   .init(color: Color("FastGuideDarkPurple"), image: Image("FastGuideConsultas"), text: "Adicionar consultas"),
   .init(color: Color("FastGuideBlue"), image: Image("FastGuideMedicamento"), text: "Adicionar medicamento"),
   .init(color: Color("FastGuideOrange"), image: Image("FastGuideSaude"), text: "Dicas de saúde"),
   .init(color: Color("FastGuideLightPurple"), image: Image("FastGuideCuidado"), text: "Plano de cuidado"),
]
