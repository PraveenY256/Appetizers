//
//  Order.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 08/03/25.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func delete(_ indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
}
