//
//  ContentView.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HomeView: View {
   
   @State var showMenu = false
   var name: String
   
   var body: some View {
      GeometryReader { geometry in
         ZStack {
            HomeBackground(screen: geometry.size.width)
            HStack (spacing: 0) {
               if showMenu {
                  SideMenu(showMenu: $showMenu, width: geometry.size.width * 0.8)
               }
               ScrollView(showsIndicators: false) {
                     VStack (spacing: 25) {
                        HeaderMenu(name: name, showMenu: $showMenu)
                        HStack {
                           HumorHydrationContainer(type: .humor, screen: geometry.size.width)
                           Spacer()
                           HumorHydrationContainer(type: .hydration, screen: geometry.size.width)
                        }
                        LastMeasurements()
                        FastGuide()
                        HealthTips()
                        HomeReminders()
                        contact
                     }
                     .padding(.horizontal, geometry.size.width * 0.05)
               }
            }
            chatButton
               .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
         }
      }
      .navigationBarHidden(true)
   }
}

extension HomeView {
   var background: some View {
      VStack (alignment: .center) {
         Circle()
            .fill(Color.themeGreen)
            .frame(width: UIScreen.main.bounds.width * 1.1)
         Spacer()
      }
      .frame(maxWidth: UIScreen.main.bounds.width)
      .edgesIgnoringSafeArea(.top)
   }
   var contact: some View {
      VStack (alignment: .leading, spacing: 5) {
         Text("Fale conosco")
            .fontWeight(.semibold)
         Text("kensho@emeal.nttdata.com")
            .foregroundColor(.black)
            .underline()
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .foregroundColor(.themeDarkGray)
      .font(.system(size: 12))
      .padding(.bottom)
   }
   var chatButton: some View {
      Button {
         print("Teste")
      } label: {
         ZStack {
            Circle()
               .fill(Color.chatButtonColor)
            Image("chatIcon")
               .resizable()
               .scaledToFit()
               .frame(width: 36, height: 36)
               .padding()
         }
         .frame(maxWidth: 50, maxHeight: 50)
      }
      .padding(30)
   }
}

struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
      HomeView(name: "Karina")
   }
}
