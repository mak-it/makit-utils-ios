//
//  location.swift
//  viva
//
//  Created by Uldis Zingis on 09/02/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import UIKit
import CoreLocation
import RxSwift

extension CLLocationCoordinate2D {
    public func getLocationAdressString() -> Observable<String?> {
        return Observable.create({ (observer) -> Disposable in
            let geocoder = CLGeocoder()
            geocoder.reverseGeocodeLocation(CLLocation(latitude: self.latitude, longitude: self.longitude)) { (placemarks, err) in
                if let error = err {
                    observer.onError(error)
                } else {
                    
                    let placemark = placemarks?.first
                    let components = [placemark?.thoroughfare, placemark?.subThoroughfare, placemark?.locality].flatMap{$0}
                    let locationString = components.joined(separator: ", ")
                    observer.onNext(locationString)
                    observer.onCompleted()
                }
            }
            return Disposables.create { }
        })
    }
}
