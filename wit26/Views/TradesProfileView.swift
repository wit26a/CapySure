//
//  TradesProfileView.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct TradesProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack(spacing: 30) {
                Image(systemName: "person.fill").font(.largeTitle)
                    .padding()
                    .background(CapyMaterial.frostedBlue)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Sarah M").font(.title.bold())
                    Text("Plumber").font(.title3)
                }
                Spacer()
            }
            Divider()
            Text("About me").font(.title3.bold())
            Text("I have over 10 years of experience in the plumbing industry. I am passionate about ensuring that your pipes are in top condition and that your home is safe and hygienic.")
            Divider()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TradesProfileView()
}
