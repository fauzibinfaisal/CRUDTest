//
//  UIButtonExt.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import Foundation
import UIKit

extension UIButton {
    
    //MARK: CheckBox Animation
    func checkboxAnimation(closure: @escaping () -> Void){
        guard let image = self.imageView else {return}
//        self.adjustsImageWhenHighlighted = false
        self.isHighlighted = false
        
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            image.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            
        }) { (success) in
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
                self.isSelected = !self.isSelected
                //to-do
                closure()
                image.transform = .identity
            }, completion: nil)
        }
        
    }
}
