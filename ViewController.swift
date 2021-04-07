//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 31.03.21.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var salaryTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var percentageSlider: UISlider!
    
    @IBOutlet weak var fedTaxLabel: UILabel!
    @IBOutlet weak var medicareLabel: UILabel!
    @IBOutlet weak var ssnLabel: UILabel!
    @IBOutlet weak var netIncomeLabel: UILabel!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fedTaxLabel.text = "$0.00"
        medicareLabel.text = "$0.00"
        ssnLabel.text = "$0.00"
        netIncomeLabel.text = "$0.00"
    }
            
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        salaryTextField.resignFirstResponder()
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        guard let personToUse = makeAPerson() else {
            return
        }
        fedTaxLabel.text = "$\(TaxCalculationModel.federalTax(personData: personToUse))"
        medicareLabel.text = "$\(TaxCalculationModel.medicareTax(personData: personToUse))"
        ssnLabel.text = "$\(TaxCalculationModel.socialSecurityTax(personData: personToUse))"
        netIncomeLabel.text = "$\(TaxCalculationModel.netIncome(input: personToUse))"
    }
    
    
    func makeAPerson() -> PersonData? {
        guard let salary = salaryTextField.text,
              let number = Double(salary) else {
            return nil
        }
        let person = PersonData(state: State.FL, ssn: 6.0, grossIncome: number)
        return person
    }
}
 










//sloji kontrolki koito da pokazvat izchisleiqta koito calc shte pravi - vyrzani s ekrana /labels/
//dobavi label za net income-a (razultata trqbva da go pokajem)
//string.concat
