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
        return false
      }
    }
    return true
  }
}
