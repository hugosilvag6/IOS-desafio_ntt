//
//  SideSwiftUI.swift
//  Kensho
//
//  Created by Hugo Silva on 12/12/22.
//

import SwiftUI

struct SideSwiftUI: View {
   
   @Environment(\.presentationMode) var presentation
   
    var body: some View {
       ZStack {
          Color.purple.ignoresSafeArea()
          
          Button {
             self.presentation.wrappedValue.dismiss()
          } label: {
             ZStack {
                RoundedRectangle(cornerRadius: 10)
                   .fill(.white)
                Text("Pop SwiftUI View")
                   .foregroundColor(.purple)
             }
          }
          .frame(maxHeight: 50)
          .padding()
       }
    }
}

struct SideSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SideSwiftUI()
    }
}
