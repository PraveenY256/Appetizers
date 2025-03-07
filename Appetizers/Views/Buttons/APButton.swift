//
//  APButton.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 04/03/25.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Title")
}
