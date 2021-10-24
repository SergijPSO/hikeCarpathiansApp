//
//  CustomStyledField.swift
//  hikeCarpathians
//
//  Created by User on 24.10.2021.
//

import Foundation
import UIKit

class CustomStyledField : UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        style()
    }

    private func style() {
        self.layer.cornerRadius = 24.0
        self.clipsToBounds = true
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor(named:"appLightGrey")?.cgColor
    }

}

class CustomStyledButton : UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        style()
    }

    private func style() {
        self.layer.cornerRadius = 24.0
        self.clipsToBounds = true
    }
}
