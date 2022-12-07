//
//  HeaderMenu.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HeaderMenu: View {
   
   var name: String
   @Binding var showMenu: Bool
   
    var body: some View {
       VStack (spacing: 32) {
          ZStack (alignment: .leading) {
             title
             button
          }
          .frame(alignment: .leading)
          greetings
       }
       .padding(.horizontal, 15)
       .padding(.bottom, 33)
    }
}

extension HeaderMenu {
   var title: some View {
      Text("Kensho")
         .font(.system(size: 26, weight: .semibold))
         .foregroundColor(.white)
         .frame(maxWidth: .infinity)
   }
   var button: some View {
      Button {
         withAnimation {
            showMenu.toggle()
         }
      } label: {
         VStack (spacing: 4) {
            RoundedRectangle(cornerRadius: 8)
               .fill(.white)
               .frame(height: 4)
            RoundedRectangle(cornerRadius: 8)
               .fill(.white)
               .frame(height: 4)
            RoundedRectangle(cornerRadius: 8)
               .fill(.white)
               .frame(height: 4)
         }
      }
      .frame(width: 24)
   }
   var greetings: some View {
      Text("Olá \(name), como está hoje?")
         .fontWeight(.bold)
         .foregroundColor(.themeYellow)
   }
}

struct HeaderMenu_Previews: PreviewProvider {
    static var previews: some View {
       HeaderMenu(name: "Karina", showMenu: .constant(true))
    }
}
