//
//  UIView.swift
//  citizen
//
//  Created by Uldis Zingis on 20/01/2017.
//  Copyright © 2017 makit. All rights reserved.
//

import UIKit

extension UIView {
    public func addShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 4.0
    }
    
    public func setupLabelHeightConstant(_ label: UILabel, heightConstraint: NSLayoutConstraint) {
        let contentSize = label.sizeThatFits(label.bounds.size)
        var frame = label.frame
        frame.size.height = contentSize.height
        label.frame = frame
        heightConstraint.constant = label.frame.height
    }
    
    public func addGradient(_ gradientLayer: CAGradientLayer) {
        if let sublayers = layer.sublayers {
            for layer in sublayers {
                if let layer = layer as? CAGradientLayer, let layerLocations = layer.locations, let newLayerLocations = gradientLayer.locations {
                    if layerLocations == newLayerLocations {
                        return
                    }
                }
            }
        }
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    public func addSubviewWithInsets(_ view: UIView, insets: UIEdgeInsets) {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(\(insets.top))-[view]-(\(insets.bottom))-|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: ["view" : view]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(insets.left))-[view]-(\(insets.right))-|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: ["view" : view]))
    }
}
