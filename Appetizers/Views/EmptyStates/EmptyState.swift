//
//  EmptyState.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 08/03/25.
//

import SwiftUI

struct EmptyState: View {
    
    var image: String
    var message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
            }
        }
        .offset(y: -20)
        
    }
}

#Preview {
    EmptyState(image: "emptyState", message: "This is a test note for the empty ui which indicates all items were deleted")
}
