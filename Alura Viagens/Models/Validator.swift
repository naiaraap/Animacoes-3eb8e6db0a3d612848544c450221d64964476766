//
//  Validator.swift
//  Alura Viagens
//
//  Created by Naiara de Almeida Pantuza on 29/08/23.
//  Copyright © 2023 Alura. All rights reserved.
//

import UIKit

class Validator: NSObject {
  
  func validateTextFields(_ textFields: [UITextField]?) -> Bool {
    for textField in textFields! {
      if textField.text?.isEmpty == true || textField.text == "" {
        chacoalhar(textField)
        return false
      }
    }
    return true
  }
  
  func chacoalhar(_ textField: UITextField) {
    let animation = CABasicAnimation(keyPath: "position")
    animation.duration = 0.1
    animation.repeatCount = 5
    animation.autoreverses = true
    animation.fromValue = NSValue(cgPoint: CGPoint(x: textField.center.x - 5, y: textField.center.y))
    animation.toValue = NSValue(cgPoint: CGPoint(x: textField.center.x + 5, y: textField.center.y))
    textField.layer.add(animation, forKey: "position")
  
  }
}
