//
//  ContentView.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 08/11/23.
//

import SwiftUI

struct ContentView: View {

    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var isAuthenticating = false

    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()

                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)

                VStack{
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))

                    if isAuthenticating {
                        ProgressView()
                    }

                    if !isAuthenticating {
                        NavigationLink(destination: SuccessView(username: username), isActive: $showingLoginScreen) {
                            Button("Login") {
                                isAuthenticating = true
                                authenticateUser(username: username, password: password)
                            }
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }
                    }
                }

            }
            .navigationBarHidden(true)
        }
    }

    func authenticateUser(username: String, password: String){
        // Your authentication logic here

        // Simulate authentication delay (you can remove this in a real app)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            if username.lowercased() == "zidane" {
                wrongUsername = 0
                if password.lowercased() == "zidane"{
                    wrongPassword = 0
                    showingLoginScreen = true
                }
                else{
                    wrongPassword = 2
                }
            }
            else{
                wrongUsername = 2
            }
            isAuthenticating = false
        }
    }
}
