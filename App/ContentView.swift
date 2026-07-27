//
//  ContentView.swift
//  Duolingo
//
//  Created by Apprenant133 on 04/03/2025.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                RacineNavigation()
            } else  {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
