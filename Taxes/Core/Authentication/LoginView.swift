//
//  LoginView.swift
//  Taxes
//
//  Created by Paul Makey on 20.03.24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            // Image
            Image("heraldry")
                .resizable()
                .frame(width: 125, height: 125)
            
            // Form Fields
            VStack(spacing: 24) {
                InputView(
                    text: $email,
                    title: "Email Address",
                    placeholder: "Example@email.com"
                )
                .textInputAutocapitalization(.never)
                
                InputView(
                    text: $password,
                    title: "Password",
                    placeholder: "Password",
                    isSecureField: true
                )
            }
            
            // Sign in Button
            Button(action: {}) {
                GeometryReader { geometry in
                    HStack {
                        Text("Log in")
                            .fontWeight(.semibold)
                            .font(.title2)
                        Image(systemName: "arrow.right")
                    }
                    .frame(
                        width: geometry.size.width - 32,
                        height: 30
                    )
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.blue)
                    )
                }
            }
            
            // Sign up Button
            NavigationLink {

            } label: {
                HStack(spacing: 2) {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

        }
        .padding()
    }
}

#Preview {
    LoginView()
}
