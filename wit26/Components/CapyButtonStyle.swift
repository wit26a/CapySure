//
//  CapyButtonStyle.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct CapyButtonStyle: ButtonStyle {
    
    var foregroundStyle: Color = .white
    var background: Color = .green
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline.bold())
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundStyle(foregroundStyle)
            .background(background)
            .clipShape(Capsule())
   
    }
}

#Preview {
    Button(action: {
        
    }, label: {
        Text("Login")
    })
    .buttonStyle(CapyButtonStyle())
}
