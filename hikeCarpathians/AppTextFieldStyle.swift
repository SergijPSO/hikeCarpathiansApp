//
//  AppTextFieldStyle.swift
//  hikeCarpathians
//
//  Created by User on 20.10.2021.
//

import Foundation
import UIKit

class AppTextFieldStyle: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 24.0
        clipsToBounds = true
        layer.cornerRadius = 24.0
        clipsToBounds = true
        layer.borderWidth = 0.5
        layer.borderWidth = 0.5
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has nos been implemented")
    }

}
