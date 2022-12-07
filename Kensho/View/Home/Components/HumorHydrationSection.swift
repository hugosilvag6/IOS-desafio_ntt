//
//  HumorHydrationContainer.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

enum HumorHydrationContainerType {
   case humor, hydration
}

struct HumorHydrationContainer: View {
   
   let type: HumorHydrationContainerType
   let screen: CGFloat
   
   var body: some View {
      VStack {
         HStack {
            Spacer()
            title
            Spacer()
            titleIcon
         }
         Spacer()
         centerImage
         Spacer()
         subtitle
      }
      .padding()
      .frame(width: screen * 0.43, height: screen * 0.43)
      .background {
         background
      }
   }
}

extension HumorHydrationContainer {
   var title: some View {
      Text(type == .humor ? "Humor" : "Hidratação")
         .foregroundColor(.themeGreen)
         .fontWeight(.semibold)
   }
   var titleIcon: some View {
      Image(systemName: type == .humor ? "chevron.down" : "info.circle.fill")
         .foregroundColor(type == .humor ? .themeDarkGray : .themeLightGray)
   }
   var centerImage: some View {
      HStack (spacing: 15) {
         if type == .hydration {
            Button {
               print("Minus")
            } label: {
               Image(systemName: "minus.circle")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 22, height: 22)
            }
         }
         Image(type == .humor ? "feliz" : "gota")
         if type == .hydration {
            Button {
               print("Plus")
            } label: {
               Image(systemName: "plus.circle")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 22, height: 22)
            }

         }
      }
      .foregroundColor(.themeLightGray)
   }
   var subtitle: some View {
      Text(type == .humor ? "Selecione o seu" : "0%")
         .foregroundColor(.themeDarkGray)
         .font(.system(size: 14))
   }
   var background: some View {
      RoundedRectangle(cornerRadius: 10)
         .stroke(.secondary)
         .background {
            Color.white.cornerRadius(10)
         }
   }
}

struct HumorHydrationContainer_Previews: PreviewProvider {
   static var previews: some View {
      HumorHydrationContainer(type: .hydration, screen: 393)
   }
}
