//
//  Data.swift
//  citizen
//
//  Created by Uldis Zingis on 27/01/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import Foundation

extension Data {
    public func toHex() -> String {
        return self.reduce("", {$0 + String(format: "%02X", $1)})
    }
    
    public func toString() -> String {
        return String(data: self, encoding: String.Encoding.ascii) ?? ""
    }
}
