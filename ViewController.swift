//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Ivan Vasilev on 31.03.21.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var salaryTextField: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!
    @IBOutlet weak var stateButton: RoundedButton!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    @IBOutlet weak var stateTableView: UITableView!
    @IBOutlet weak var fedTaxLabel: UILabel!
    @IBOutlet weak var medicareLabel: UILabel!
    @IBOutlet weak var ssnLabel: UILabel!
    @IBOutlet weak var netIncomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateTableView.delegate = self
        stateTableView.dataSource = self
        
        stateTableView.isHidden = true
        fedTaxLabel.text = "$0.00"
        medicareLabel.text = "$0.00"
        ssnLabel.text = "$0.00"
        netIncomeLabel.text = "$0.00"
    }
            
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        salaryTextField.resignFirstResponder()
    }
   
    func roundedDecimal(amount: Decimal) -> Double {
        let result: Double = NSDecimalNumber(decimal: amount).doubleValue
        return result
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        guard let personToUse = makeAPerson() else {
            return
        }
        fedTaxLabel.text = String(format: "$%.2f", roundedDecimal(amount:  TaxCalculationModel.federalTax(personData: personToUse)))
        
        medicareLabel.text = String(format: "$%.2f", roundedDecimal(amount:  TaxCalculationModel.medicareTax(personData: personToUse)))
        
        ssnLabel.text = String(format: "$%.2f", roundedDecimal(amount:  TaxCalculationModel.socialSecurityTax(personData: personToUse)))
        
        netIncomeLabel.text = String(format: "$%.2f", roundedDecimal(amount:  TaxCalculationModel.netIncome(input: personToUse)))
    }
    
    
    func makeAPerson() -> PersonData? {
        guard let salary = salaryTextField.text,
              let number = Double(salary) else {
            return nil
        }
        let selectedState = stateButton.currentTitle
        let stateToUse = State(rawValue: selectedState!)
        let person = PersonData(state: stateToUse!, ssn: 6.0, grossIncome: Decimal(number))
        return person
    }
    
    
    @IBAction func statesButtonTapped(_ sender: RoundedButton) {
        if stateTableView.isHidden {
            animate(toogle: true)
        } else {
            animate(toogle: false)
        }
    }
    
    func animate(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.stateTableView.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.stateTableView.isHidden = true
            }
        }
    }
}
 
extension ViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return State.allValues.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(State.allValues[indexPath.row])"
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        stateButton.setTitle("\(State.allValues[indexPath.row])", for: .normal)
        animate(toogle: false)
    }
    
    
    
    
}
    
        
        
        
        
        
        
        
        
        
        
        
// make a separate class
// rename statesButton - statesButtonTapped/ onStatesButton
// when tap in tableview - save the selected state
// change the lable from "State:" to "State: Al"
// button "State" will have two conditions: "Show Picker" and "Hide Picker"








//sloji kontrolki koito da pokazvat izchisleiqta koito calc shte pravi - vyrzani s ekrana /labels/
//dobavi label za net income-a (razultata trqbva da go pokajem)
//string.concat
