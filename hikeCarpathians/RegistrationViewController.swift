//
//  RegistrationViewController.swift
//  hikeCarpathians
//
//  Created by User on 07.10.2021.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var registrationEmailField: UITextField!
    @IBOutlet weak var registrationPassField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    let toglePassButton = UIButton()
    var btnColor = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrationEmailField.delegate = self
        registrationPassField.delegate = self
        setUI()
    }
    
    func setUI() {
        setRadius()
        addPassFieldButton()
    }
    
    func setRadius() {
        registrationEmailField.layer.cornerRadius = 24.0
        registrationEmailField.clipsToBounds = true
        registrationEmailField.layer.borderWidth = 0.5;
        registrationEmailField.layer.borderColor = UIColor.lightGray.cgColor;
        registrationPassField.layer.cornerRadius = 24.0
        registrationPassField.clipsToBounds = true
        registrationPassField.layer.borderWidth = 0.5;
        registrationPassField.layer.borderColor = UIColor.lightGray.cgColor;
        registerButton.layer.cornerRadius = 24.0
    }

    func addPassFieldButton() {
        registrationPassField.rightViewMode = .unlessEditing
        toglePassButton.setImage(UIImage(named: "eyeHidden"), for: .normal)
        toglePassButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 15)
        toglePassButton.addTarget(self, action: #selector(self.btnPasswordVisiblityClicked), for: .touchUpInside)
        registrationPassField.rightView = toglePassButton
        registrationPassField.rightViewMode = .always
    }
    //Botton color toggle
    func toggleButtonState() {
        switch registrationEmailField.text!.isEmpty {
        case true:
            registerButton.backgroundColor = UIColor(named:"appGrey")
        case false:
            registerButton.backgroundColor = UIColor(named:"appOrange")
        default:
            registerButton.backgroundColor = UIColor(named:"appGrey")
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case registrationEmailField:
            registrationEmailField.layer.borderWidth = 1
            registrationEmailField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        case registrationPassField:
            registrationPassField.layer.borderWidth = 1
            registrationPassField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        default:
            print("Oops something went wrong")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        toggleButtonState()
        switch textField {
        case registrationEmailField:
            registrationEmailField.layer.borderWidth = 0.5
            registrationEmailField.layer.borderColor =  UIColor(named: "appGrey")!.cgColor
        case registrationPassField:
            registrationPassField.layer.borderWidth = 0.5
            registrationPassField.layer.borderColor = UIColor(named: "appGrey")!.cgColor
        default:
            print("Oops something went wrong")
        }
    }
    @IBAction func toLoginForm(_ sender: Any) {
    }
    
    @IBAction func btnPasswordVisiblityClicked(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (sender as! UIButton).isSelected {
            self.registrationPassField.isSecureTextEntry = false
            toglePassButton.setImage(UIImage(named: "eyeShown"), for: .normal)
        } else {
            self.registrationPassField.isSecureTextEntry = true
            toglePassButton.setImage(UIImage(named: "eyeHidden"), for: .normal)
        }
    }
    
}
