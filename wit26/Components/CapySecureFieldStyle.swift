//
//  CapyTextFieldStyle.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct CapySecureField: View {
    
    var title: String
    
    @Binding var text: String
    
    var systemIcon: String
    
    var body: some View {
        SecureField(title, text: $text)
            .padding()
            //.padding(.leading)
            .safeAreaInset(edge: .leading) {
                Image(systemName: systemIcon).padding(.horizontal).font(.headline)
            }
            .background(Color.white)
            .compositingGroup()
            .clipShape(Capsule())
            .shadow(radius: 2)
    }
}

#Preview {
    CapyTextField(title: "Email", text: .constant("woah."), systemIcon: "leaf")
}
