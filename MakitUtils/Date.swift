//
//  Date.swift
//  entrepreneur
//
//  Created by Uldis Zingis on 19/01/2017.
//  Copyright © 2017 MAK IT SIA. All rights reserved.
//

import Foundation

extension Date {
    public func startOfDay() -> Date {
        var calendar = Calendar.current
        calendar.timeZone = NSTimeZone.local
        return calendar.startOfDay(for: self)
    }
}
