//
//  HomeReminders.swift
//  Kensho
//
//  Created by Hugo Silva on 06/12/22.
//

import SwiftUI

struct HomeReminders: View {
   
   @State var openMedicines = false
   @State var openAppointments = false
   
    var body: some View {
       VStack (alignment: .leading) {
          Text("Lembretes")
             .foregroundColor(.themeDarkGray)
             .fontWeight(.semibold)
          VStack (spacing: 20) {
             blocks(item: HomeReminderData[0], chevron: openMedicines) {
                openMedicines.toggle()
             }
             blocks(item: HomeReminderData[1], chevron: openAppointments) {
                openAppointments.toggle()
             }
          }
       }
    }
}

extension HomeReminders {
   func blocks(item: HomeReminderContainer, chevron: Bool, action: @escaping () -> Void) -> some View {
      VStack (spacing: 20) {
         HStack {
            Spacer()
            blockTitle(text: item.title)
            Spacer()
            Button {
               action()
            } label: {
               Image(systemName: chevron ? "chevron.up" : "chevron.down")
                  .foregroundColor(.themeDarkGray)
            }
         }
         HStack {
            blockNumber(text: item.number)
               .padding(.trailing, 20)
            VStack (alignment: .leading, spacing: 11) {
               ForEach(item.items) { subItem in
                  VStack(alignment: .leading) {
                     HStack {
                        Text(subItem.date)
                        Text("-")
                        Text(subItem.title)
                     }
                     .font(.system(size: 14))
                     if chevron {
                        Text(subItem.subtitle)
                           .font(.system(size: 12))
                     }
                  }
                  .foregroundColor(.themeDarkGray)
               }
            }
            Spacer()
         }
      }
      .padding()
      .background {
         background
      }
   }
   func blockNumber(text: String) -> some View {
      Text(text)
         .foregroundColor(.themeGreen)
         .font(.system(size: 32))
   }
   func blockTitle(text: String) -> some View {
      Text(text)
         .foregroundColor(.themeGreen)
         .fontWeight(.semibold)
   }
   var background: some View {
      RoundedRectangle(cornerRadius: 10)
         .stroke(.secondary)
         .background {
            Color.white.cornerRadius(10)
         }
   }
}

struct HomeReminders_Previews: PreviewProvider {
    static var previews: some View {
        HomeReminders()
    }
}
