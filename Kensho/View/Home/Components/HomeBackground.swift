//
//  HomeBackground.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HomeBackground: View {
   
   var screen: CGFloat
   
   var body: some View {
      VStack (alignment: .center) {
         Circle()
            .fill(Color.themeGreen)
            .frame(width: screen * 1.1, height: screen * 1.1)
            .offset(y: -screen * 0.35)
         Spacer()
      }
      .frame(maxWidth: screen)
      .edgesIgnoringSafeArea(.top)
   }
}

struct HomeBackground_Previews: PreviewProvider {
   static var previews: some View {
      HomeBackground(screen: 393)
   }
}
