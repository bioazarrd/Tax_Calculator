//
//  PersonData.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 2.04.21.
//

import Foundation

class PersonData {
    
    let state: State
    let ssn: Double
    let grossIncome: Double
    
    init(state: State, ssn: Double, grossIncome: Double) {
        self.state = state
        self.ssn = ssn
        self.grossIncome = grossIncome
    }
}
