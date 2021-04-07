//
//  TaxCalculationModel.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 1.04.21.
//

import Foundation

//return tuple - optional
//return structure/class and return both amounts. name should be proper
//refactor - create a func for the common calculation
//taxEstimate could be class/structure as well (proper name for all)


enum State  {
    case AL, AZ, AR, CA, CO, CT, DE, DC, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY
    
    public static func getValue(state: State) -> Double {
        if state == .AL || state == .AZ || state == .AR || state == .CA || state == .CO || state == .CT || state == .DE || state == .DC || state == .FL || state == .GA || state == .HI || state == .ID || state == .IL || state == .IN || state == .IA || state == .KS || state == .KY || state == .LA || state == .ME || state == .MD || state == .MA || state == .MI || state == .MN || state == .MS || state == .MO || state == .MT || state == .NE || state == .NV || state == .NH || state == .NJ {
            return 20.28
        } else {
            return 25.89
        }
    }
}

class TaxCalculationModel {
    

    static func federalTax(personData: PersonData) -> Double {
        
        let fedTax: Double
        let grossAmount = personData.grossIncome
        
        switch personData.state {
        case .AL:
            fedTax = Double(grossAmount * 0.1767)
        case .AZ:
            fedTax = Double(grossAmount * 0.1156)
        case .AR:
            fedTax = Double(grossAmount * 0.1894)
        case .CA:
            fedTax = Double(grossAmount * 0.1659)
        case .CO:
            fedTax = Double(grossAmount * 0.1578)
        case .CT:
            fedTax = Double(grossAmount * 0.1356)
        case .DE:
            fedTax = Double(grossAmount * 0.1178)
        case .DC:
            fedTax = Double(grossAmount * 0.1982)
        case .FL:
            fedTax = Double(grossAmount * 0.1478)
        case .GA:
            fedTax = Double(grossAmount * 0.1879)
        case .HI:
            fedTax = Double(grossAmount * 0.1498)
        case .ID:
            fedTax = Double(grossAmount * 0.1398)
        case .IL:
            fedTax = Double(grossAmount * 0.1158)
        case .IN:
            fedTax = Double(grossAmount * 0.1248)
        case .IA:
            fedTax = Double(grossAmount * 0.1389)
        case .KS:
            fedTax = Double(grossAmount * 0.1487)
        case .KY:
            fedTax = Double(grossAmount * 0.1589)
        case .LA:
            fedTax = Double(grossAmount * 0.1387)
        case .ME:
            fedTax = Double(grossAmount * 0.1315)
        case .MD:
            fedTax = Double(grossAmount * 0.1258)
        case .MA:
            fedTax = Double(grossAmount * 0.1354)
        case .MI:
            fedTax = Double(grossAmount * 0.1156)
        case .MN:
            fedTax = Double(grossAmount * 0.1156)
        case .MS:
            fedTax = Double(grossAmount * 0.1263)
        case .MO:
            fedTax = Double(grossAmount * 0.1354)
        case .MT:
            fedTax = Double(grossAmount * 0.1156)
        case .NE:
            fedTax = Double(grossAmount * 0.1158)
        case .NV:
            fedTax = Double(grossAmount * 0.1325)
        case .NH:
            fedTax = Double(grossAmount * 0.1321)
        case .NJ:
            fedTax = Double(grossAmount * 0.1321)
        case .NM:
            fedTax = Double(grossAmount * 0.1327)
        case .NY:
            fedTax = Double(grossAmount * 0.1325)
        case .NC:
            fedTax = Double(grossAmount * 0.1984)
        case .ND:
            fedTax = Double(grossAmount * 0.1327)
        case .OH:
            fedTax = Double(grossAmount * 0.1698)
        case .OK:
            fedTax = Double(grossAmount * 0.1697)
        case .OR:
            fedTax = Double(grossAmount * 0.1478)
        case .PA:
            fedTax = Double(grossAmount * 0.1324)
        case .RI:
            fedTax = Double(grossAmount * 0.1158)
        case .SC:
            fedTax = Double(grossAmount * 0.1256)
        case .SD:
            fedTax = Double(grossAmount * 0.1155)
        case .TN:
            fedTax = Double(grossAmount * 0.1111)
        case .TX:
            fedTax = Double(grossAmount * 0.1234)
        case .UT:
            fedTax = Double(grossAmount * 0.1235)
        case .VT:
            fedTax = Double(grossAmount * 0.1238)
        case .VA:
            fedTax = Double(grossAmount * 0.1135)
        case .WA:
            fedTax = Double(grossAmount * 0.1158)
        case .WV:
            fedTax = Double(grossAmount * 0.1358)
        case .WI:
            fedTax = Double(grossAmount * 0.1147)
        default:
            fedTax = Double(grossAmount * 0.1145)
        }
        return round(fedTax)
    }

    static func medicareTax(personData: PersonData) -> Double {
        let personState: State = personData.state
        let medicareTax: Double = State.getValue(state: personState)
        return medicareTax
    }
    
    static func socialSecurityTax(personData: PersonData) -> Double {
        let grossAmount = personData.grossIncome
        let ssnPercentage = personData.ssn
        let ssnTax: Double = Double(round(grossAmount * (ssnPercentage / 100)))
        return round(ssnTax)
    }

    static func netIncome(input: PersonData) -> Double {
        let grossIncome = input.grossIncome
        
        let grossIncomeAfterFederalTax = Double(grossIncome) - federalTax(personData: input)
        let grossIncomeAfterMedicareTax = grossIncomeAfterFederalTax - medicareTax(personData: input)
        let grossIncomeAfterSSNTax = grossIncomeAfterMedicareTax - socialSecurityTax(personData: input)
        
        return round(grossIncomeAfterSSNTax)
    }
}






//29/3 - Git Repo - naming conv up to me - "Tax_Calculator"
//Step 2: X_Code project (not a playground one)
//Step 3: Use MVC structure -
// rename class PersonData, shorten the enum name (just State),
//add medicareTax to each state in the enum  as a property









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


