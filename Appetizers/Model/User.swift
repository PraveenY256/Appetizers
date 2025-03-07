//
//  User.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 05/03/25.
//

import Foundation

struct User: Codable {
    var firstName:String = ""
    var lastName:String = ""
    var email:String = ""
    var birthDay:Date = Date()
    var extraNapkins = false
    var frequentRefills = false
}
