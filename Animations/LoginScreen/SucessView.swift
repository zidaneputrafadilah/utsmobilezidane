//
//  SuccessView.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 08/11/23.
//

import SwiftUI

struct SuccessView: View {
    let username: String

    var body: some View {
        ZStack {
            // Background
            Rectangle()
                .foregroundColor(.green)
                .cornerRadius(50)
                .frame(width: 320, height: 50)
                .position(x: UIScreen.main.bounds.size.width / 2, y: 50) // Mengatur posisi vertikal di bagian atas

            // Text
            Text("Yey kamu udah berhasil login, \(username)!")
                .font(Font.system(size: 16, weight: .bold)) //
                .foregroundColor(.white)
                .padding()
                .position(x: UIScreen.main.bounds.size.width / 2, y: 50)
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(username: "Zidane")
    }
}

