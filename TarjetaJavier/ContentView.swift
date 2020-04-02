//
//  ContentView.swift
//  TarjetaJavier
//
//  Created by Javier Giner Alvarez on 02/04/2020.
//  Copyright © 2020 Javier Giner Alvarez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(K.MainColors.mainBackColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("javier")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(K.MainColors.infoBackColor), lineWidth: 3)
                    )
                
                Text("Javier Giner")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .font(Font.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "692 88 75 43", imageName: "phone.fill")
                InfoView(text: "jgineralvarez@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
