//
//  PersonData.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 2.04.21.
//

import Foundation

class PersonData {
    
    let state: State
    let ssn: Decimal
    let grossIncome: Decimal
    
    init(state: State, ssn: Decimal, grossIncome: Decimal) {
        self.state = state
        self.ssn = ssn
        self.grossIncome = grossIncome
    }
}
