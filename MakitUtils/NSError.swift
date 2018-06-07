//
//  NSError.swift
//  viva
//
//  Created by Mazen on 21/03/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import Foundation

extension NSError {
    public static func newError(_ message: String, code: Int) -> NSError {
        let dict: [String: Any] = [NSLocalizedDescriptionKey: message]
        return NSError(domain: Bundle.main.bundleIdentifier!, code: code, userInfo: dict)
    }
}
