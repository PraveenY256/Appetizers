//
//  ContentView.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 19/02/25.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizersTabView()
}
