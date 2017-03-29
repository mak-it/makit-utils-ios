//
//  Calendar.swift
//  viva
//
//  Created by Mazen on 27/03/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import Foundation

extension Calendar {
    public func isDate(_ date: Date, in month: Date) -> Bool {
        let components = Calendar.current.dateComponents([.month, .year], from: month)
        let startOfMonth = Calendar.current.date(from: components)!
        
        let endMonthComponents = NSDateComponents()
        endMonthComponents.month = 1
        endMonthComponents.day = -1
        let endOfMonth = Calendar.current.date(byAdding: endMonthComponents as DateComponents, to: startOfMonth)!
        
        return (date >= startOfMonth) && (date <= endOfMonth)
    }
}
