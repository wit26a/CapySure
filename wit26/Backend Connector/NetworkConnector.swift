//
//  NetworkConnector.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import Foundation

class NetworkConnector {
    
    var baseUrl = URL(string: "http://172.26.93.201:5001")
    

    
    func getProfile() {
        let url = baseUrl?.appendingPathComponent("api/profile")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data {
                print("Data: \(data)")
                print(String(data: data, encoding: .utf8)!)
            }
        }
        
        task.resume()
    }
}

