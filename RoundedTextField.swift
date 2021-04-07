//
//  RoundedLabel.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 7.04.21.
//

import UIKit

class RoundedTextField: UITextField {

    @IBInspectable var borderColor: UIColor = UIColor.green {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}



