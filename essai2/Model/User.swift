//
//  User.swift
//  Duolingo
//
//  Created by Apprenant133 on 15/03/2025.
//

import Foundation


struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
//    var niveau: String
//    var modeGolri: Bool
    
// Initiales utilise non utilisé atm
//    var initals: String {
//        let formatter = PersonNameComponentsFormatter()
//        if let components = formatter.personNameComponents(from: fullname) {
//            formatter.style = .abbreviated
//            return formatter.string(from: components)
//        }
//        
//        return ""
//    }
}


extension User {
//    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Julien Lepers", email: "jllp@example.com")
}
