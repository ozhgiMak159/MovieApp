//
//  Extension + String.swift
//  MovieApp
//
//  Created by Maksim  on 03.07.2022.
//

import UIKit


extension String {
    func capitalizeFirstLatter() -> String {
         self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}


extension CALayer {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        CAGradientLayer().mask = mask
    }
}
