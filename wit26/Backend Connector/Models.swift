//
//  Models.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

nonisolated
class UserLoginModel: Codable {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

nonisolated
class AuthenticatedUserModel: Codable {
    var token: String
    var username: String
    
    init(token: String, username: String) {
        self.token = token
        self.username = username
    }
}



nonisolated
class UserProfileModel: Codable {
    var username: String
    var firstName: String
    var surname: String
    var id: Int
    var phoneNumber: String
    var email_address: String
}
