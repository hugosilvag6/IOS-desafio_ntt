//
//  FastGuide.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct FastGuide: View {
    var body: some View {
       VStack (alignment: .leading) {
          Text("Guia rápido")
             .foregroundColor(.themeDarkGray)
             .fontWeight(.semibold)
          ScrollView(.horizontal, showsIndicators: false) {
             HStack {
                ForEach(FastGuideData) { item in
                   VStack {
                      ZStack {
                         Circle()
                            .fill(item.color)
                         item.image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                      }
                      Text(item.text)
                         .multilineTextAlignment(.center)
                         .foregroundColor(.themeDarkGray)
                         .font(.system(size: 12))
                   }
                   .frame(width: 80)
                }
             }
          }
       }
    }
}

struct FastGuide_Previews: PreviewProvider {
    static var previews: some View {
        FastGuide()
    }
}


