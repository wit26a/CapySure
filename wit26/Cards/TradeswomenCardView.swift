//
//  TradeswomenCardView.swift
//  wit26
//
//  Created by totoro tabby on 07/03/2026.
//

import SwiftUI

struct TradeswomenCardView: View {
    
    var name: String
    var role: String
    var distance: Int
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(systemName: "person.fill").font(.largeTitle)
                .padding()
                .background(CapyMaterial.frostedBlue)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text("\(name)")
                    .font(.title.bold())
                    .lineLimit(1)
                    .truncationMode(.tail)
                            
                Text("\(role)")
                    .font(.title3)
                    .lineLimit(1)
                            
                HStack(spacing: 2){
                    ForEach(0..<5) { i in
                        Image(systemName: i < 4 ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    }
                }
            .padding(.top, 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
                        
            Spacer()
            VStack{
                Text("\(distance)").font(.title)
                Text("mi")
            }
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    TradeswomenCardView(name: "Joanne", role: "Painter", distance: 67)
}
