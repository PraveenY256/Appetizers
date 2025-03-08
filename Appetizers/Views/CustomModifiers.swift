//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 08/03/25.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
    
}
