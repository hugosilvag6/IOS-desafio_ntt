//
//  LastMeasurements.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct LastMeasurements: View {
   
    var body: some View {
       VStack {
          HStack {
             Spacer()
             title
             Spacer()
             titleIcon
          }
          HStack (spacing: 17) {
             Image("measurementCircles")
             infos
          }
       }
       .padding()
       .background {
          background
       }
    }
}

extension LastMeasurements {
   var title: some View {
      Text("Últimas medições")
         .foregroundColor(.themeGreen)
         .fontWeight(.semibold)
   }
   var titleIcon: some View {
      Image(systemName: "chevron.down")
         .foregroundColor(.themeDarkGray)
   }
   var background: some View {
      RoundedRectangle(cornerRadius: 10)
         .stroke(.secondary)
         .background {
            Color.white.cornerRadius(10)
         }
   }
   var infos: some View {
      VStack {
         Text("Infos das medições 1")
         Text("Infos das medições 2")
         Text("Infos das medições 3")
      }
      .foregroundColor(.themeDarkGray)
   }
}

struct LastMeasurements_Previews: PreviewProvider {
    static var previews: some View {
        LastMeasurements()
    }
}
