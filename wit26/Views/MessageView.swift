//
//  MessageView.swift
//  wit26
//
//  Created by totoro tabby on 07/03/2026.
//

import SwiftUI
let currentUserID = "user123"
struct MessageView: View {
    let messages: [Message] = [
        Message(content: "Hi, I saw you're available on Saturdays? I have a fence that needs repainting. Let me know if you're free!", timestamp: Date(),senderID: "user456"),
        Message(content: "Hello! Yes I can be available. Are you happy with my hourly rate?", timestamp: Date(), senderID: "user123"),
        Message(content: "I also charge an extra 20% for weekends. Does that work for you?", timestamp: Date(), senderID: "user123"),
        Message(content: "That's fine by me!", timestamp: Date(), senderID: "user456")
    ]
    
    let currentUserID = "user123"
    @State private var typedMessage: String = ""
    
    var body: some View {
        VStack{
            Text("Name")
            Text("Online")
        }
        Divider()
        Spacer()
        VStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(messages) { message in
                        HStack(alignment: .bottom) {
                            if message.senderID == currentUserID {
                                Spacer()
                                ChatView(contentMessage: message.content, isCurrentUser: true)
                            } else {
                                ChatView(contentMessage: message.content, isCurrentUser: false)
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }
            }
            
        }
        
        HStack() {
            TextField("Type a message", text: $typedMessage)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("Send tapped: \(typedMessage)")
            }) {
                Image(systemName: "paperplane.fill")
                    .font(.title2)
                    .padding(8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
}


#Preview {
    MessageView()
}
