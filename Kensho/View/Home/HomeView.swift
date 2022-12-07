//
//  ContentView.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HomeView: View {
   
   @State var path = NavigationPath()
   @State var showMenu = false
   
   var body: some View {
      NavigationStack (path: $path) {
         GeometryReader { geometry in

            HStack (spacing: 0) {
               SideMenu(showMenu: $showMenu, width: geometry.size.width * 0.8)
               ScrollView(showsIndicators: false) {
                  VStack (spacing: 25) {
                     HeaderMenu(name: "Karina", showMenu: $showMenu)
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
               }
               .background {
                  HomeBackground(screen: geometry.size.width)
               }
               .padding(.horizontal, geometry.size.width * 0.05)
               .overlay(alignment: .bottomTrailing) {
                  chatButton
               }
            }
            .offset(x: showMenu ? 0 : -(geometry.size.width * 0.8))
         }
         
      }
   }
}

extension HomeView {
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
         Image("chatIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 36, height: 36)
            .padding()
            .background {
               Circle()
                  .fill(Color.chatButtonColor)
            }
      }
      .padding()
   }
}

struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
      HomeView()
   }
}
