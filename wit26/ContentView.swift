//
//  ContentView.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var env: CapyEnvironment
    var body: some View {
        if env.isSignedIn {
            JobsView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
