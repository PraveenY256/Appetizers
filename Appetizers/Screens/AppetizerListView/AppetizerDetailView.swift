//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 03/03/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            HStack(spacing: 40) {
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add  to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
