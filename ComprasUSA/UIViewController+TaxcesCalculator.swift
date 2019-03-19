//
//  UIViewController+TaxcesCalculator.swift
//  ComprasUSA
//
//  Created by Gabriel Carvalho Guerrero on 19/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

extension UIViewController {
    var taxesCalculator: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
