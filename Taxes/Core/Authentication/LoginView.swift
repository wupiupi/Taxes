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
            VStack {
                InputView(
                    text: $email,
                    title: "Email",
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
            
            // Sign up Button
        }
    }
}

#Preview {
    LoginView()
}
