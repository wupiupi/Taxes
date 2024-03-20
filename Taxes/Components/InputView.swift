//
//  InputView.swift
//  Taxes
//
//  Created by Paul Makey on 20.03.24.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 16))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 16))
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(
        text: .constant(""),
        title: "Title",
        placeholder: "Placeholder"
    )
}
