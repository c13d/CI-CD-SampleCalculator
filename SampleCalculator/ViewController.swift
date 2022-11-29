//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Christophorus Davin on 28/11/22.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics
class ViewController: UIViewController {

    @IBOutlet weak var monthlyInvestments: UITextField!
    
    @IBOutlet weak var currentAge: UITextField!
    
    
    @IBOutlet weak var retirementAge: UITextField!
    
    @IBOutlet weak var interestRate: UITextField!
    
    @IBOutlet weak var currentSavings: UITextField!
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "Sorry about that, an error occured.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        Analytics.trackEvent("navigated_to_calculator")
    }

    @IBAction func calculate(_ sender: Any) {
        
        let current_age : Int? = Int(currentAge.text!)
        let retirement_age : Int? = Int(retirementAge.text!)
        let monthly_investment : Float? = Float(monthlyInvestments.text!)
        let current_savings : Float? = Float(currentSavings.text!)
        let interest_rate : Float? = Float(interestRate.text!)
        
        result.text = "If you save $\(monthly_investment!) every month for \(retirement_age! - current_age!) years, and invest that money plus your current investment of $\(current_savings!) at a \(interest_rate!)% anual interest rate, you will have $X by the time you are \(retirement_age!)"
        
    }
    
}

