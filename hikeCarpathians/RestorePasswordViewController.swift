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
        setUI()
        restorePassEmailField.delegate = self
    }

    func setUI() {
        setRadius()
    }

    func setRadius() {
        restorePassEmailField.layer.cornerRadius = 24.0
        restorePassEmailField.clipsToBounds = true
        restorePassEmailField.layer.borderWidth = 0.5;
        restorePassEmailField.layer.borderColor = UIColor.lightGray.cgColor;
        restorePassButton.layer.cornerRadius = 24.0
    }

    func toggleButtonState() {
        if restorePassEmailField.text!.isEmpty {
            restorePassButton.backgroundColor = UIColor(named:"appGrey")
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
            restorePassEmailField.layer.borderColor = UIColor(named: "appGrey")!.cgColor
        }
    }

    @IBAction func restoreFieldEditingChanged(_ sender: Any) {
        if restorePassEmailField.text!.count > 0 {
            restorePassButton.layer.backgroundColor = UIColor(named: "appOrange")!.cgColor
        } else {
            restorePassButton.layer.backgroundColor = UIColor(named: "appGrey")!.cgColor
        }
    }

    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
