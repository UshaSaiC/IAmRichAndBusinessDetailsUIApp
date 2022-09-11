//
//  InfoView.swift
//  BusinessCardAppUI
//
//  Created by Usha Sai Chintha on 11/09/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
        // fill is used to fill in color in a object
            .fill(Color.white)
        // frame modifier help in resizing the component
        // .frame(width: 100.0, height: 100.0)
            .frame(height: 60.0)
        // .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(.green).frame(width: 40, height: 40)
                    Text(text).bold()
                }).foregroundColor(.black)
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        // updated the preview as we dont need entire simulator screen now
        InfoView(text: "phone number", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
