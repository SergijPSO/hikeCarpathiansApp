//
//  AuthorizationViewController.swift
//  hikeCarpathians
//
//  Created by User on 06.10.2021.
//

import UIKit

class AuthorizationViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Variables and outlets declaration
    @IBOutlet weak var authEmailField: UITextField!
    @IBOutlet weak var authPassField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    let toglePassButton = UIButton()
    var btnColor = UIButton()

    //MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        authEmailField.delegate = self
        authPassField.delegate = self
        setUI()
    }

    //MARK: - Functions declaration
    func setUI() {
        setRadius()
        addPassFieldButton()
    }

    func setRadius() {
        // Setting styles to textfields
        authEmailField.layer.cornerRadius = 24.0
        authEmailField.clipsToBounds = true
        authPassField.layer.cornerRadius = 24.0
        authPassField.clipsToBounds = true
        authPassField.layer.borderWidth = 0.5
        authPassField.layer.borderWidth = 0.5
        loginButton.layer.cornerRadius = 24.0
        loginButton.clipsToBounds = true
    }

    func addPassFieldButton() {
        authPassField.rightViewMode = .unlessEditing
        toglePassButton.setImage(UIImage(named: "eyeHidden"), for: .normal)
        toglePassButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 15)
        toglePassButton.addTarget(self, action: #selector(self.btnPasswordVisiblityClicked), for: .touchUpInside)
        authPassField.rightView = toglePassButton
        authPassField.rightViewMode = .always
    }
    //Button color toggle
    func toggleButtonState() {
        switch authEmailField.text!.isEmpty {
        case true:
            loginButton.backgroundColor = UIColor(named:"appGrey")
        case false:
            loginButton.backgroundColor = UIColor(named:"appOrange")
        default:
            loginButton.backgroundColor = UIColor(named:"appGrey")
        }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case authEmailField:
            authEmailField.layer.borderWidth = 1
            authEmailField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        case authPassField:
            authPassField.layer.borderWidth = 1
            authPassField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        default:
            print("Oops something went wrong")
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        toggleButtonState()
        switch textField {
        case authEmailField:
            authEmailField.layer.borderWidth = 0.5
            authEmailField.layer.borderColor =  UIColor(named: "appGrey")!.cgColor
        case authPassField:
            authPassField.layer.borderWidth = 0.5
            authPassField.layer.borderColor = UIColor(named: "appGrey")!.cgColor
        default:
            print("Oops something went wrong")
        }
    }

    @IBAction func btnPasswordVisiblityClicked(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (sender as! UIButton).isSelected {
            self.authPassField.isSecureTextEntry = false
            toglePassButton.setImage(UIImage(named: "eyeShown"), for: .normal)
        } else {
            self.authPassField.isSecureTextEntry = true
            toglePassButton.setImage(UIImage(named: "eyeHidden"), for: .normal)
        }
    }

}
