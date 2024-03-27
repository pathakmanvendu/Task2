//
//  extensions.swift
//  Task2
//
//  Created by manvendu pathak  on 23/03/24.
//

import Foundation
import UIKit

//MARK: - Extensions

extension UIView {
    func giveBorder(cornerRadious : CGFloat, borderWidth : CGFloat , borderColor: String) {
        self.layer.cornerRadius = cornerRadious
        self.layer.masksToBounds = true
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = UIColor(named: borderColor)?.cgColor
    }
    
    func giveCornerRadious(cornerRadious: CGFloat){
        self.layer.cornerRadius = cornerRadious
        self.layer.masksToBounds = true
    }
}
