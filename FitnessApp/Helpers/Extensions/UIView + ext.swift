//
//  UIView + ext.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit

extension UIView {
    
    func addButtomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
}
