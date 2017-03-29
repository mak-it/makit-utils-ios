//
//  RefreshControl.swift
//  viva
//
//  Created by Mazen on 28/03/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    public func endRefreshingIfPossible() {
        if isRefreshing {
            endRefreshing()
        }
    }
}
