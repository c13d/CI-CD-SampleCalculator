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
        
        
        
    }
    
}

