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


enum State: String  {
    
    
    
    case AL, AZ, AR, CA, CO, CT, DE, DC, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY
    
    public static func getValue(state: State) -> Double {
        if state == .AL {
            return 20.28
        } else if state == .AZ {
            return 22.48
        } else if state == .AR {
            return 15.99
        } else if state == .CA {
            return 18.54
        } else if state == .CO {
            return 15.95
        } else if state == .CT {
            return 20.56
        } else if state == .DE {
            return 19.59
        } else if state == .DC {
            return 19.58
        } else if state == .FL {
            return 19.62
        } else if state == .GA {
            return 22.31
        } else if state == .HI {
            return 20.54
        } else if state == .ID {
            return 19.84
        } else if state == .IL {
            return 22.58
        } else if state == .IN {
            return 28.47
        } else if state == .IA {
            return 16.95
        } else if state == .KS {
            return 16.48
        } else if state == .KY {
            return 15.48
        } else if state == .LA {
            return 20.36
        } else if state == .ME {
            return 22.48
        } else if state == .MD {
            return 36.99
        } else if state == .MA {
            return 10.52
        } else if state == .MI {
            return 14.84
        } else if state == .MN {
            return 16.97
        } else if state == .MS {
            return 19.35
        } else if state == .MO {
            return 15.51
        } else if state == .MT {
            return 25.51
        } else if state == .NE {
            return 16.51
        } else if state == .NV {
            return 18.95
        } else if state == .NH {
            return 19.84
        } else if state == .NJ {
            return 16.39
        } else if state == .NM {
            return 20.58
        } else if state == .NY {
            return 17.85
        } else if state == .NC {
            return 19.85
        } else if state == .ND {
            return 17.90
        } else if state == .OH {
            return 18.94
        } else if state == .OK {
            return 14.97
        } else if state == .OR {
            return 15.97
        } else if state == .PA {
            return 12.97
        } else if state == .RI {
            return 18.49
        } else if state == .SC {
            return 24.80
        } else if state == .SD {
            return 20.94
        } else if state == .TN {
            return 26.51
        } else if state == .TX {
            return 21.22
        } else if state == .UT {
            return 25.48
        } else if state == .VT {
            return 17.58
        } else if state == .VA {
            return 19.48
        } else if state == .WA {
            return 19.58
        } else if state == .WV {
            return 14.85
        } else if state == .WI {
            return 18.58
        } else {
            return 10.97
        }
    }
    
    static let allValues = [AL, AZ, AR, CA, CO, CT, DE, DC, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY]
}

class TaxCalculationModel {
    
    static func federalTax(personData: PersonData) -> Decimal {
        
        let fedTax: Decimal
        let grossAmount = personData.grossIncome
        
        switch personData.state {
        case .AL:
            fedTax = grossAmount * 0.1767
        case .AZ:
            fedTax = grossAmount * 0.1156
        case .AR:
            fedTax = grossAmount * 0.1894
        case .CA:
            fedTax = grossAmount * 0.1659
        case .CO:
            fedTax = grossAmount * 0.1578
        case .CT:
            fedTax = grossAmount * 0.1356
        case .DE:
            fedTax = grossAmount * 0.1178
        case .DC:
            fedTax = grossAmount * 0.1982
        case .FL:
            fedTax = grossAmount * 0.1478
        case .GA:
            fedTax = grossAmount * 0.1879
        case .HI:
            fedTax = grossAmount * 0.1498
        case .ID:
            fedTax = grossAmount * 0.1398
        case .IL:
            fedTax = grossAmount * 0.1158
        case .IN:
            fedTax = grossAmount * 0.1248
        case .IA:
            fedTax = grossAmount * 0.1389
        case .KS:
            fedTax = grossAmount * 0.1487
        case .KY:
            fedTax = grossAmount * 0.1589
        case .LA:
            fedTax = grossAmount * 0.1387
        case .ME:
            fedTax = grossAmount * 0.1315
        case .MD:
            fedTax = grossAmount * 0.1258
        case .MA:
            fedTax = grossAmount * 0.1354
        case .MI:
            fedTax = grossAmount * 0.1156
        case .MN:
            fedTax = grossAmount * 0.1156
        case .MS:
            fedTax = grossAmount * 0.1263
        case .MO:
            fedTax = grossAmount * 0.1354
        case .MT:
            fedTax = grossAmount * 0.1156
        case .NE:
            fedTax = grossAmount * 0.1158
        case .NV:
            fedTax = grossAmount * 0.1325
        case .NH:
            fedTax = grossAmount * 0.1321
        case .NJ:
            fedTax = grossAmount * 0.1321
        case .NM:
            fedTax = grossAmount * 0.1327
        case .NY:
            fedTax = grossAmount * 0.1325
        case .NC:
            fedTax = grossAmount * 0.1984
        case .ND:
            fedTax = grossAmount * 0.1327
        case .OH:
            fedTax = grossAmount * 0.1698
        case .OK:
            fedTax = grossAmount * 0.1697
        case .OR:
            fedTax = grossAmount * 0.1478
        case .PA:
            fedTax = grossAmount * 0.1324
        case .RI:
            fedTax = grossAmount * 0.1158
        case .SC:
            fedTax = grossAmount * 0.1256
        case .SD:
            fedTax = grossAmount * 0.1155
        case .TN:
            fedTax = grossAmount * 0.1111
        case .TX:
            fedTax = grossAmount * 0.1234
        case .UT:
            fedTax = grossAmount * 0.1235
        case .VT:
            fedTax = grossAmount * 0.1238
        case .VA:
            fedTax = grossAmount * 0.1135
        case .WA:
            fedTax = grossAmount * 0.1158
        case .WV:
            fedTax = grossAmount * 0.1358
        case .WI:
            fedTax = grossAmount * 0.1147
        default:
            fedTax = grossAmount * 0.1145
        }
        return fedTax
    }

    static func medicareTax(personData: PersonData) -> Decimal {
        let personState: State = personData.state
        let medicareTax: Decimal = Decimal(State.getValue(state: personState))
        return medicareTax
    }
    
    static func socialSecurityTax(personData: PersonData) -> Decimal {
        let grossAmount = personData.grossIncome
        let ssnPercentage = personData.ssn / 100
        let ssnTax = grossAmount * ssnPercentage
        return ssnTax
    }

    static func netIncome(input: PersonData) -> Decimal {
        let grossIncome = input.grossIncome
        
        let grossIncomeAfterFederalTax = grossIncome - federalTax(personData: input)
        let grossIncomeAfterMedicareTax = grossIncomeAfterFederalTax - medicareTax(personData: input)
        let grossIncomeAfterSSNTax = grossIncomeAfterMedicareTax - socialSecurityTax(personData: input)
        
        return grossIncomeAfterSSNTax
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


