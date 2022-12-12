//
//  SideMenu.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct SideMenu: View {
   
   @Binding var showMenu: Bool
   @State var showMinhaSaude = false
   var width: CGFloat
   var onSideViewCode: (() -> Void)
   var onSideSwiftUI: (() -> Void)
   
   var body: some View {
      ZStack {
         Color.themeGreen
            .edgesIgnoringSafeArea(.vertical)
         VStack (alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                  ScrollView (showsIndicators: false) {
                     header
                     minhaSaude
                     regularItem(image: Image("MeusDevices"), text: "Meus Devices")
                     regularItem(image: Image("DicasDeSaude"), text: "Dicas de Saúde")
                     regularItem(image: Image("chatIcon"), text: "Chat")
                     regularItem(image: Image("Smartwatch"), text: "Smartwatch")
                     regularItem(image: Image(""), text: "Anura")
                     regularItem(image: Image("Configuracoes"), text: "Configurações")
                     regularItem(image: Image("Sair"), text: "Sair")
                  }
            }
            .padding(.horizontal)
         }
         .frame(width: width)
      }
   }
}

extension SideMenu {
   var header: some View {
      HStack {
         Image("KenshoLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 70)
         Spacer()
         Button {
            withAnimation {
               showMenu.toggle()
            }
         } label: {
            Image(systemName: "xmark")
               .foregroundColor(.white)
               .font(.system(size: 18, weight: .bold))
         }
      }
      .padding(.trailing)
   }
   func regularItem(image: Image, text: String) -> some View {
      VStack (alignment: .leading) {
         HStack {
            image
               .resizable()
               .scaledToFit()
               .frame(width: 24, height: 24)
            Text(text)
               .foregroundColor(.white)
         }
         Rectangle()
            .fill(.white.opacity(0.25))
            .frame(height: 1)
      }
   }
   var minhaSaude: some View {
      return VStack (alignment: .leading) {
         HStack {
            Image("MinhaSaude")
               .resizable()
               .scaledToFit()
               .frame(width: 24, height: 24)
            Text("Minha Saúde")
               .foregroundColor(.white)
            Spacer()
            Button {
               withAnimation {
                  showMinhaSaude.toggle()
               }
            } label: {
               Image(systemName: showMinhaSaude ? "chevron.up" : "chevron.down")
                  .foregroundColor(.white)
                  .font(.system(size: 18, weight: .bold))
            }
         }
         .padding(.trailing)
         if showMinhaSaude {
            VStack (alignment: .leading, spacing: 10) {
//               ForEach(0..<4) { _ in
//                  NavigationLink {
//                     VCFromSideMenuRepresentable()
//                        .navigationBarHidden(false)
//                  } label: {
//                     Text("Push UIViewController")
//                  }
//               }
               Button {
                  self.onSideViewCode()
               } label: {
                  Text("Push UIViewController")
               }
               Button {
                  self.onSideSwiftUI()
               } label: {
                  Text("Push SwiftUI")
               }
               Button {
                  print("Teste")
               } label: {
                  Text("Item 3")
               }
               Button {
                  print("Teste")
               } label: {
                  Text("Item 4")
               }
            }
            .padding(.leading, 30)
            .foregroundColor(.white)
            .font(.system(size: 14))
         }
         Rectangle()
            .fill(.white.opacity(0.25))
            .frame(height: 1)
      }
   }
}

struct SideMenu_Previews: PreviewProvider {
   static var previews: some View {
      SideMenu(showMenu: .constant(true), width: 290, onSideViewCode: {}, onSideSwiftUI: {})
   }
}


struct VCFromSideMenuRepresentable: UIViewControllerRepresentable {
   func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
   
   func makeUIViewController(context: Context) -> some UIViewController {
      return SideViewCode()
   }
}
