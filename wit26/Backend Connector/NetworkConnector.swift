//
//  NetworkConnector.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import Foundation

class NetworkConnector {
    
    var baseUrl = URL(string: "http://172.26.87.176:5001")
    
    func getAuthenticatedRequest(url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.setValue("Bearer \(CapyEnvironment.shared.token ?? "")", forHTTPHeaderField: "Authorization")
        return request
    }
    
    func login(username: String, password: String) {
        guard let url = baseUrl?.appendingPathComponent("api/login/users") else {
            return
        }
        
        var request = URLRequest(url: url)
        
        let user = UserLoginModel(username: username, password: password)
        
        do {
            let jsonEncoder = JSONEncoder()
            let data = try jsonEncoder.encode(user)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = data
        } catch {
            print("there was a crazy error ")
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let urlResponse = response as? HTTPURLResponse, urlResponse.statusCode == 200, let data = data else { return }
            
            //print("what we got is \(String(data: data, encoding: .utf8) ?? "")")
            if let user = try? JSONDecoder().decode(AuthenticatedUserModel.self, from: data) {
                //print("we got token \(user.token)")
                DispatchQueue.main.async {
                    CapyEnvironment.shared.isSignedIn = true
                    CapyEnvironment.shared.token = user.token
                    self.getProfile()
                }
                
            }
            
            
        }
        
        task.resume()
        
    }
    
    func getProfile() {
        guard let url = baseUrl?.appendingPathComponent("api/profile/users") else {
            return
        }
        
        print(CapyEnvironment.shared.token ?? "NO TOKEN")
        
        var request = URLRequest(url: url)
        request.setValue("Bearer \(CapyEnvironment.shared.token ?? "")", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let urlResponse = response as? HTTPURLResponse, urlResponse.statusCode == 200, let data = data else { return }
            
            if let user = try? JSONDecoder().decode(UserProfileModel.self, from: data) {
                DispatchQueue.main.async {
                    CapyEnvironment.shared.name = user.firstName
                }
            }
            
            
        }
        
        task.resume()
    }
}

