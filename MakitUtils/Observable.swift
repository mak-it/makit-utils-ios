//
//  Observable.swift
//  viva
//
//  Created by Uldis Zingis on 13/02/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import Foundation
import RxSwift

extension Observable {
    public func mapAsAny() -> Observable<Any?> {
        return self.map({ (_) -> Any? in
            return nil
        })
    }
}
