//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Gabriel Carvalho Guerrero on 19/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var textFieldDolar: UITextField!
    @IBOutlet weak var labelRealDescription: UILabel!
    @IBOutlet weak var labelReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldDolar.resignFirstResponder()
        setAmmount()
    }

    func setAmmount() {
        taxesCalculator.shoppingValue = taxesCalculator.convertToDouble(textFieldDolar.text!)
        labelReal.text = taxesCalculator.getFormattedValue(of: taxesCalculator.shoppingValue * taxesCalculator.dolar, withCurrency: "R$ ")
        let dolar = taxesCalculator.getFormattedValue(of: taxesCalculator.dolar, withCurrency: "")
        labelRealDescription.text = "Valor sem impostos (dólar \(dolar))"
    }
}

