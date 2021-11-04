//
//  ProfileVC.swift
//  hikeCarpathians
//
//  Created by User on 22.10.2021.
//

import UIKit

class ProfileVC: UIViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate, UITextFieldDelegate {

    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var userImageContainer: UIView!
    @IBOutlet weak var profileInfoView: UIStackView!
    @IBOutlet weak var profileUsernameField: UITextField!
    @IBOutlet weak var profileAdressField: CustomStyledField!
    @IBOutlet weak var profileEmailField: CustomStyledField!

    @IBOutlet weak var userAvatarImage: UIImageView!
    let imagePicker = UIImagePickerController()

    @IBOutlet weak var profilePhoneField: CustomStyledField!
    @IBOutlet weak var profilePassField: CustomStyledField!

    let leftUserImageView = UIImageView()
    let leftAdressImageView = UIImageView()
    let leftEmailImageView = UIImageView()
    let leftPhoneImageView = UIImageView()
    let leftPassImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileUI()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        profileUsernameField.delegate = self
        profileAdressField.delegate = self
        profileEmailField.delegate = self
        profilePhoneField.delegate = self
        profilePassField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func imagePickButton(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title:"Gallery", style: .default, handler: {(button) in
            self.imagePicker.sourceType = .photoLibrary
            self.present(self.imagePicker, animated: true, completion: nil)
        }))

        alert.addAction(UIAlertAction(title:"Camera", style: .default, handler: {(button) in
            self.imagePicker.sourceType = .camera
            self.present(self.imagePicker, animated: true, completion: nil)
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)

    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {return}
        userAvatarImage.image = pickedImage
        dismiss(animated: true, completion: nil)
    }

    func setProfileUI() {
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.layer.cornerRadius = imageAvatar.frame.width / 2
        userImageContainer.layer.cornerRadius = userImageContainer.frame.height / 2
        userImageContainer.layer.cornerRadius = userImageContainer.frame.width / 2
        userImageContainer.layer.borderWidth = 4
        userImageContainer.layer.borderColor = UIColor(named:"appOrange")?.cgColor
        profileInfoView.layer.cornerRadius = 10
        profileInfoView.clipsToBounds = false

        // set the shadow properties
        profileInfoView.layer.shadowColor = UIColor.black.cgColor
        profileInfoView.layer.shadowOffset = CGSize(width: 2, height: 6.0)
        profileInfoView.layer.shadowOpacity = 0.5
        profileInfoView.layer.shadowRadius = 8.0

        // setting profile username textfield icon
        leftUserImageView.image = UIImage(named: "userIcon")
        let leftUserView = UIView()
        leftUserView.addSubview(leftUserImageView)

        leftUserView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftUserImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileUsernameField.text = "Sergiy Pankiv"
        profileUsernameField.leftViewMode = .always
        profileUsernameField.leftView = leftUserView

        // setting profile location textfield icon
        leftAdressImageView.image = UIImage(named: "locationIcon")
        let leftAdressView = UIView()
        leftAdressView.addSubview(leftAdressImageView)

        leftAdressView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftAdressImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileAdressField.leftViewMode = .always
        profileAdressField.leftView = leftAdressView
        profileAdressField.text = "Львів"

        // setting profile email textfield icon
        leftEmailImageView.image = UIImage(named: "emailIcon")
        let leftEmailView = UIView()
        leftEmailView.addSubview(leftEmailImageView)

        leftEmailView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftEmailImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileEmailField.leftViewMode = .always
        profileEmailField.leftView = leftEmailView
        profileEmailField.text = "my-email@gmail.com"

        // setting profile phone textfield icon
        leftPhoneImageView.image = UIImage(named: "phoneIcon")
        let leftPhoneView = UIView()
        leftPhoneView.addSubview(leftPhoneImageView)

        leftPhoneView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftPhoneImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profilePhoneField.leftViewMode = .always
        profilePhoneField.leftView = leftPhoneView
        profilePhoneField.text = "0993354026"

        // setting profile password textfield icon
        leftPassImageView.image = UIImage(named: "passIcon")
        let leftPassView = UIView()
        leftPassView.addSubview(leftPassImageView)

        leftPassView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftPassImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profilePassField.text = "12345"
        profilePassField.leftViewMode = .always
        profilePassField.leftView = leftPassView
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(named: "appOrange")!.cgColor
        switch textField {
        case profileUsernameField:
            leftUserImageView.image = UIImage(named: "userIconActive")
        case profileAdressField:
            leftAdressImageView.image = UIImage(named: "locationIconActive")
        case profileEmailField:
            leftEmailImageView.image = UIImage(named: "emailIconActive")
        case profilePhoneField:
            leftPhoneImageView.image = UIImage(named: "phoneIconActive")
        case profilePassField:
            leftPassImageView.image = UIImage(named: "passIconActive")
        default:
            break
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor =  UIColor(named: "appLightGrey")!.cgColor
        switch textField {
        case profileUsernameField:
            leftUserImageView.image = UIImage(named: "userIcon")
        case profileAdressField:
            leftAdressImageView.image = UIImage(named: "locationIcon")
        case profileEmailField:
            leftEmailImageView.image = UIImage(named: "emailIcon")
        case profilePhoneField:
            leftPhoneImageView.image = UIImage(named: "phoneIcon")
        case profilePassField:
            leftPassImageView.image = UIImage(named: "passIcon")
        default:
            break
        }
    }
}
