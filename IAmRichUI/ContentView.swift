//
//  ContentView.swift
//  IAmRichUI
//
//  Created by Usha Sai Chintha on 11/09/22.
//

import SwiftUI

// below struct defines how the user interface is going to look like and behave
struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemPurple)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("I Am Rich")
                .font(.system(size: 40))
                // .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0, alignment: .center)
                
            }
        }
    }
}

// below struct defines how the preview should be created and how it should behave
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
