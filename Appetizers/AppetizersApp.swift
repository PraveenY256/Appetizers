//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 19/02/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizersTabView()
                .environmentObject(order)
        }
    }
}

#Preview {
    AppetizersTabView().environmentObject(Order())
}
