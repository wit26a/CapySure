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
    
    @EnvironmentObject var env: CapyEnvironment
    
    var body: some View {
        VStack {
            Image("CapyPhoto")
                .resizable()
                
                .aspectRatio(contentMode: .fit)
                .padding(.top, 150)
            VStack(spacing: 20) {
                
                Spacer()
                Text("Hello!").font(.largeTitle.bold())
                
                CapyTextField(title: "Email", text: $email, systemIcon: "at")
                CapySecureField(title: "Password", text: $password, systemIcon: "key")
                Button(action: {
                    let networkConnector = NetworkConnector()
                    networkConnector.login(username: email, password: password)
                    
                    env.isSignedIn = true
                    
                    
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
