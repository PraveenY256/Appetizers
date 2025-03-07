//
//  Alert.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 03/03/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
    var dismissButtonTitle: Alert.Button
}


struct AlertContext {
    
    //MARK: - Network error alerts
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try againg later or contact support."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data recieved from the server was invalid. Please contact support."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete the request. Please check your internet connection and try again."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    
    //MARK: - Account alerts
    
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all the fields in the form have been filled."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email is correct."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile inforamtion has successfully saved."),
        dismissButtonTitle: .default(Text("OK"))
    )
    
    static let invalidUserData = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or retrieving your profile."),
        dismissButtonTitle: .default(Text("OK"))
    )
}
