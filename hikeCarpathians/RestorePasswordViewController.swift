//
//  RestorePasswordViewController.swift
//  hikeCarpathians
//
//  Created by User on 19.10.2021.
//

import UIKit

class RestorePasswordViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var restorePassEmailField: UITextField!
    @IBOutlet weak var restorePassButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        restorePassEmailField.delegate = self
    }

    func toggleButtonState() {
        if restorePassEmailField.text!.isEmpty {
            restorePassButton.backgroundColor = UIColor(named:"appLightGrey")
        } else {
            restorePassButton.backgroundColor = UIColor(named:"appOrange")
        }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField  == restorePassEmailField {
            restorePassEmailField.layer.borderWidth = 1
            restorePassEmailField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == restorePassEmailField {
            restorePassEmailField.layer.borderWidth = 1
            restorePassEmailField.layer.borderColor = UIColor(named: "appLightGrey")!.cgColor
        }
    }

    @IBAction func restoreFieldEditingChanged(_ sender: Any) {
        if restorePassEmailField.text!.count > 0 {
            restorePassButton.layer.backgroundColor = UIColor(named: "appOrange")!.cgColor
        } else {
            restorePassButton.layer.backgroundColor = UIColor(named: "appLightGrey")!.cgColor
        }
    }

}
