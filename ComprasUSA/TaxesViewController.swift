//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Gabriel Carvalho Guerrero on 19/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    
    @IBOutlet weak var labelDolar: UILabel!
    @IBOutlet weak var labelStateTaxeDescription: UILabel!
    @IBOutlet weak var labelStateTaxe: UILabel!
    @IBOutlet weak var labelIOFDescription: UILabel!
    @IBOutlet weak var labelIOF: UILabel!
    @IBOutlet weak var switchCreditCard: UISwitch!
    @IBOutlet weak var labelReal: UILabel!
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    func calculateTaxes() {
        labelStateTaxeDescription.text = "Imposto do Estado(\(taxesCalculator.getFormattedValue(of: taxesCalculator.stateTaxe, withCurrency: "")))"
        labelIOFDescription.text = "IOF (\(taxesCalculator.getFormattedValue(of: taxesCalculator.iof, withCurrency: "")))"
        
        labelDolar.text = taxesCalculator.getFormattedValue(of: taxesCalculator.shoppingValue, withCurrency: "US$ ")
        labelStateTaxe.text = taxesCalculator.getFormattedValue(of: taxesCalculator.stateTaxeValue, withCurrency: "US$ ")
        labelIOF.text = taxesCalculator.getFormattedValue(of: taxesCalculator.iofValue, withCurrency: "US$ ")
        
        let real = taxesCalculator.calculate(usingCreditCard: switchCreditCard.isOn)
        labelReal.text = taxesCalculator.getFormattedValue(of: real, withCurrency: "R$ ")
    }

}
