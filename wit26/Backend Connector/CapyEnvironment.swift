//
//  CapyEnvironment.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

internal import Combine

class CapyEnvironment: ObservableObject {
    
    static let shared = CapyEnvironment()
    
    var token: String?
    @Published var isSignedIn = false
    @Published var name = ""
}
