//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 08/03/25.
//

import Foundation

extension Date {
    
    var eighteenYearsOldAgo:Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredYearsAgo:Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
