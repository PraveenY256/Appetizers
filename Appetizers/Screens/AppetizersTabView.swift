//
//  ContentView.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 19/02/25.
//

import SwiftUI

struct AppetizersTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        TabView {
            AppetizersListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizersTabView()
}
