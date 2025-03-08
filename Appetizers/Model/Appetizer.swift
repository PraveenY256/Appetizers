//
//  Appetizer.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 20/02/25.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let carbs: Int
    let calories: Int
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer: Appetizer = Appetizer(
            id: 001,
            name: "Test Appetizer",
            description: "This is the description of my test appetizer: it's quite delicious!",
            price: 9.99,
            imageURL: "",
            protein: 99,
            carbs: 99,
            calories: 99
        )
    
    static let sampleAppetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    static let orderItemOne = Appetizer(
            id: 001,
            name: "Test Appetizer One",
            description: "This is the description of my test appetizer: it's quite delicious!",
            price: 9.99,
            imageURL: "",
            protein: 99,
            carbs: 99,
            calories: 99
        )
    
    static let orderItemTwo = Appetizer(
            id: 002,
            name: "Test Appetizer Two",
            description: "This is the description of my test appetizer: it's quite delicious!",
            price: 9.99,
            imageURL: "",
            protein: 99,
            carbs: 99,
            calories: 99
        )
    
    static let OrderItemThree = Appetizer(
            id: 003,
            name: "Test Appetizer Three",
            description: "This is the description of my test appetizer: it's quite delicious!",
            price: 9.99,
            imageURL: "",
            protein: 99,
            carbs: 99,
            calories: 99
        )
    
    static let orderItems = [orderItemOne, orderItemTwo, OrderItemThree]
}
