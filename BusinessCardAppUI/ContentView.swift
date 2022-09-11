//
//  ContentView.swift
//  BusinessCardAppUI
//
//  Created by Usha Sai Chintha on 11/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // rgb values had minimum values as 0 and maximum being 1
            // Color(red: 1, green: 0, blue: 0)
            // we can even add a 4th parameter below called opacity
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Usha").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                // clipShape helps in giving image a shape
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                // overlay helps in adding  border to image and ideally overlay would be on top of image
                // stroke helps in getting the border lines shape instead of filled shape
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                Text("Usha Sai")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Practitioner")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                // divider helps in creating sections
                Divider()
                InfoView(text: "+91 123 456 7890", imageName: "phone.fill")
                InfoView(text: "email@email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}
