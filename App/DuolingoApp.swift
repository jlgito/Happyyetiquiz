//
//  DuolingoApp.swift
//  Duolingo
//
//  Created by Apprenant133 on 04/03/2025.
//

import SwiftUI
import Firebase
@main
struct DuolingoApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
