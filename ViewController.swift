//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 31.03.21.
//
import UIKit

//return tuple - optional
//return structure/class and return both amounts. name should be proper
//refactor - create a func for the common calculation
//taxEstimate could be class/structure as well (proper name for all)

enum StateEnumeration {
    case AL, AK, AZ, AR, CA, CO, CT, DE, DC, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY
}

/*func stateCheck(state: StateEnumeration) -> Bool {
    if  state == .AL || state == .AK || state == .AZ || state == .AR || state == .CA || state == .CO || state == .CT || state == .DE || state == .DC || state == .FL || state == .GA || state == .HI || state == .ID || state == .IL || state == .IN || state == .IA || state == .KS || state == .KY || state == .LA || state == .ME || state == .MD || state == .MA || state == .MI || state == .MN || state == .MS || state == .MO || state == .MT || state == .NE || state == .NV || state == .NH || state == .NJ || state == .NM || state == .NY || state == .NC || state == .ND || state == .OH || state == .OK || state == .OR || state == .PA || state == .RI || state == .SC || state == .SD || state == .TN || state == .TX || state == .UT || state == .VT || state == .VA || state == .WA || state == .WV || state == .WI || state == .WY {
        return true
    } else {
        return false
    }
}*/



func federalTax(state: StateEnumeration, grossAmount: Double) -> Double {
    
    let salaryAfterFedTax: Double
    
    switch state {
    case .AL:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1767)
    case .AK:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1587)
    case .AZ:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1156)
    case .AR:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1894)
    case .CA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1659)
    case .CO:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1578)
    case .CT:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1356)
    case .DE:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1178)
    case .DC:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1982)
    case .FL:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1478)
    case .GA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1879)
    case .HI:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1498)
    case .ID:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1398)
    case .IL:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1158)
    case .IN:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1248)
    case .IA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1389)
    case .KS:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1487)
    case .KY:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1589)
    case .LA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1387)
    case .ME:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1315)
    case .MD:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1258)
    case .MA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1354)
    case .MI:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1156)
    case .MN:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1156)
    case .MS:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1263)
    case .MO:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1354)
    case .MT:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1156)
    case .NE:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1158)
    case .NV:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1325)
    case .NH:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1321)
    case .NJ:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1321)
    case .NM:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1327)
    case .NY:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1325)
    case .NC:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1984)
    case .ND:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1327)
    case .OH:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1698)
    case .OK:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1697)
    case .OR:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1478)
    case .PA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1324)
    case .RI:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1158)
    case .SC:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1256)
    case .SD:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1155)
    case .TN:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1111)
    case .TX:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1234)
    case .UT:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1235)
    case .VT:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1238)
    case .VA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1135)
    case .WA:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1158)
    case .WV:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1358)
    case .WI:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1147)
    default:
        salaryAfterFedTax = grossAmount * (1.0 - 0.1145)
    }
    return salaryAfterFedTax
}



func medicareTax(state: StateEnumeration, salaryAfterFed: Double) -> Double {
    
    let salaryBeforeMedicareTax: Double
    
    if state == .AL || state == .AK || state == .AZ || state == .AR || state == .CA || state == .CO || state == .CT || state == .DE || state == .DC || state == .FL || state == .GA || state == .HI || state == .ID || state == .IL || state == .IN || state == .IA || state == .KS || state == .KY || state == .LA || state == .ME || state == .MD || state == .MA || state == .MI || state == .MN || state == .MS || state == .MO || state == .MT || state == .NE || state == .NV || state == .NH || state == .NJ {
        salaryBeforeMedicareTax = salaryAfterFed - 20.28
    } else {
        salaryBeforeMedicareTax = salaryAfterFed - 25.89
    }
    return salaryBeforeMedicareTax
}



func socialSecurityTax(salaryAfterMed: Double, ssn: Double) -> Double {
    
    let salaryAfterSSN: Double
    salaryAfterSSN = round(salaryAfterMed * (1.0 - (ssn / 100)))
    
    return salaryAfterSSN
}



func taxEstimate(salary: Double, state: StateEnumeration, ssn: Double) -> Double {
        
    let salaryAfterFedTax = federalTax(state: state, grossAmount: salary)
    let salaryAfterMedicare = medicareTax(state: state, salaryAfterFed: salaryAfterFedTax)
    let salaryAfterSSN = socialSecurityTax(salaryAfterMed: salaryAfterMedicare, ssn: ssn)
    return salaryAfterSSN
}



class PersonData {
    
    let state: StateEnumeration
    let ssn: Double
    let grossIncome: Double
    
    init(state: StateEnumeration, ssn: Double, grossIncome: Double) {
        self.state = state
        self.ssn = ssn
        self.grossIncome = grossIncome
    }
}


class TaxCalculator {
        
    let person: PersonData
    
    init(personData: PersonData) {
        self.person = personData
    }
    
    func netIncome() -> String {
        return "Current net income for the month, based on the information input: $\(taxEstimate(salary: person.grossIncome, state: person.state, ssn: person.ssn))"
    }
}


let person = PersonData(state: StateEnumeration.FL, ssn: 6.0, grossIncome: 50_000)
let calcMyTax = TaxCalculator(personData: person).netIncome()




//29/3 - Git Repo - naming conv up to me - "Tax_Calculator"
//Step 2: X_Code project (not a playground one)
//Step 3: Use MVC structure -
// rename class PersonData, shorten the enum name (just State),
//add medicareTax to each stae in the enum  as a property









//space for improvment
//0) make a TaxCalc class -> receives PersonelData
//0) make the states as enums use switch, not if(s)) --- current
//0) throw an error
//0) change the return type from String to Double/Decimal (Amount) --- current (use Decimal!)

//1) single/married/divorced
//2) enter all the states and their tax compliance
//3) bonus depending on the date of the check
//4) different salary ranges
//5) last paycheck /total amount distributed to the personel/

