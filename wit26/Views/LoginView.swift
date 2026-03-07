//
//  LoginView.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Image("CapyPhoto")
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack(spacing: 20) {
                
                Spacer()
                Text("Hello!").font(.largeTitle.bold())
                
                CapyTextField(title: "Email", text: $email, systemIcon: "at")
                CapySecureField(title: "Password", text: $password, systemIcon: "key")
                Button(action: {
                    let networkConnector = NetworkConnector()
                    networkConnector.getProfile()
                }, label: {
                    Text("Login")
                })
                .buttonStyle(CapyButtonStyle(background: CapyMaterial.orchidMist))
            }
            .padding()
            .padding(.bottom, 200)
        }.ignoresSafeArea()
        
    }
}

#Preview {
    LoginView()
}
