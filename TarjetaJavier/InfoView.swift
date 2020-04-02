//
//  InfoView.swift
//  TarjetaJavier
//
//  Created by Javier Giner Alvarez on 02/04/2020.
//  Copyright © 2020 Javier Giner Alvarez. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(K.MainColors.infoBackColor))
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(K.MainColors.mainBackColor))
                    Text(text).foregroundColor(Color(K.MainColors.infoColor))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
