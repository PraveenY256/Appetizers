//
//  OrderView.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 19/02/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.delete)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(image: "emptyState", message: "You have no items in your order.\nPlease add an appetizer")
                }
            }
            .navigationBarTitle("🧾 Order")
                
        }
        
    }
}

#Preview {
    OrderView()
}
