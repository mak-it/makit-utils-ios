//
//  DateFormatter.swift
//  entrepreneur
//
//  Created by Uldis Zingis on 10/01/2017.
//  Copyright © 2017 MAK IT SIA. All rights reserved.
//

import Foundation

extension DateFormatter {
    public func toDateAndTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "lv_LV")
        formatter.dateFormat = "d.MM.yyyy., HH:mm"
        
        return formatter.string(from: date)
    }
    
    public func toDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "lv_LV")
        formatter.dateFormat = "d.MM.yyyy"
        
        return formatter.string(from: date)
    }
    
    public static func toClosestFormat(_ date: Date) -> String {
        let calendar = Calendar.current
        let passedDay = calendar.component(.day, from: date)
        let today = calendar.component(.day, from: Date())
        
        if passedDay == today {
            return DateFormatter.toSpecificFormat(date, format: "HH:mm")
        } else if passedDay == today - 1 {
            return "Vakar"
        } else {
            return DateFormatter.toSpecificFormat(date, format: "d.MMM")
        }
    }
    
    public static func toSpecificFormat(_ date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "lv_LV")
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
}
