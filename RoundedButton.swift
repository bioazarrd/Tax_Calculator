//
//  RoundedButton.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 7.04.21.
//

import UIKit

class RoundedButton: UIButton {
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                self.layer.cornerRadius = cornerRadius
            }
        }

        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                self.layer.borderWidth = borderWidth
            }
        }

        @IBInspectable var borderColor: UIColor = UIColor.green {
            didSet {
                self.layer.borderColor = borderColor.cgColor
            }
        }
    }
