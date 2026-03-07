//
//  ChatView.swift
//  wit26
//
//  Created by totoro tabby on 07/03/2026.
//

import SwiftUI

struct ChatView: View {
    var contentMessage: String
    var isCurrentUser: Bool

    var body: some View {
        HStack {
            if isCurrentUser {
                Spacer() 
                        

                Text(contentMessage)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        

                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                            .padding()
                            .background(CapyMaterial.frostedBlue)
                            .clipShape(Circle())
                    } else {

                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                            .padding()
                            .background(CapyMaterial.frostedBlue)
                            .clipShape(Circle())
                        

                        Text(contentMessage)
                            .padding(10)
                            .foregroundColor(.black)
                            .background(Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
                            .cornerRadius(10)
                        
                        Spacer()
                    }
                }
    }
}

struct Message: Identifiable {
    var id = UUID()
    var content: String
    var timestamp: Date
    var senderID: String
}

struct User {
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
}

#Preview {
    ChatView(contentMessage: "Hi, I am your friend", isCurrentUser: false)
    ChatView(contentMessage: "Hi, I am your friend", isCurrentUser: true)

}
