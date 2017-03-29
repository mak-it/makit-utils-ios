//
//  UIAlert.swift
//  viva
//
//  Created by Mazen on 20/03/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    public static func presentAlert(in vc: UIViewController, with title: String?, and message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Labi", style: .default, handler: { (_) in
            alert.dismiss(animated: true, completion: nil)
        }))
        vc.present(alert, animated: true, completion: nil)
    }
    
    public static func presentErrorAlert(in vc: UIViewController, with title: String?, and error: Error) {
        let err = error as NSError
        let message = err.domain
        presentAlert(in: vc, with: title, and: message)
    }
}
