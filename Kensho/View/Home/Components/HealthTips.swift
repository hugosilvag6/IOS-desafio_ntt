//
//  HealthTips.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HealthTips: View {
   var body: some View {
      VStack (alignment: .leading) {
         HStack {
            Text("Dicas de saúde")
               .foregroundColor(.themeDarkGray)
               .fontWeight(.semibold)
         }
         ScrollView(.horizontal, showsIndicators: false) {
            HStack {
               ForEach(HealthTipsData) { item in
                  ZStack {
                     RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.themeLightGray)
                     HStack {
                        item.image
                           .resizable()
                           .scaledToFit()
                        VStack (alignment: .leading) {
                           Text(item.title)
                              .foregroundColor(.themeGreen)
                              .font(.system(size: 14, weight: .semibold))
                           Text(item.subtitle)
                              .foregroundColor(.themeDarkGray)
                              .font(.system(size: 14))
                              .padding(.vertical, 5)
                           Text(item.date)
                              .foregroundColor(.themeDarkGray.opacity(0.5))
                              .font(.system(size: 12))
                        }
                        .padding(.vertical, 10)
                        .padding(.trailing)
                     }
                     .frame(width: 300, height: 130)
                  }
               }
            }
         }
      }
   }
}

struct HealthTips_Previews: PreviewProvider {
   static var previews: some View {
      HealthTips()
   }
}
