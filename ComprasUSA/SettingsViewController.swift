//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Gabriel Carvalho Guerrero on 19/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var textFieldDolar: UITextField!
    @IBOutlet weak var textFieldIOF: UITextField!
    @IBOutlet weak var textFieldStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldDolar.text = taxesCalculator.getFormattedValue(of: taxesCalculator.dolar, withCurrency: "")
        textFieldIOF.text = taxesCalculator.getFormattedValue(of: taxesCalculator.iof, withCurrency: "")
        textFieldStateTaxes.text = taxesCalculator.getFormattedValue(of: taxesCalculator.stateTaxe, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        taxesCalculator.dolar = taxesCalculator.convertToDouble(textFieldDolar.text!)
        taxesCalculator.iof = taxesCalculator.convertToDouble(textFieldIOF.text!)
        taxesCalculator.stateTaxe = taxesCalculator.convertToDouble(textFieldStateTaxes.text!)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
