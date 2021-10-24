//
//  ProfileVC.swift
//  hikeCarpathians
//
//  Created by User on 22.10.2021.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var userImageContainer: UIView!
    @IBOutlet weak var profileInfoView: UIStackView!
    @IBOutlet weak var profileUsernameField: CustomStyledField!
    @IBOutlet weak var profileAdressField: CustomStyledField!
    @IBOutlet weak var profileEmailField: CustomStyledField!

    @IBOutlet weak var profilePhoneField: CustomStyledField!
    @IBOutlet weak var profilePassField: CustomStyledField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileUI()
        // Do any additional setup after loading the view.
    }

    func setProfileUI() {
        userImageContainer.layer.cornerRadius = userImageContainer.frame.height / 2
        userImageContainer.layer.cornerRadius = userImageContainer.frame.width / 2
        userImageContainer.layer.borderWidth = 4
        userImageContainer.layer.borderColor = UIColor(named:"appOrange")?.cgColor
        profileInfoView.layer.cornerRadius = 10
        profileInfoView.clipsToBounds = true

        // set the shadow properties
        profileInfoView.layer.shadowColor = UIColor.black.cgColor
        profileInfoView.layer.shadowOffset = CGSize(width: 2, height: 6.0)
        profileInfoView.layer.shadowOpacity = 0.5
        profileInfoView.layer.shadowRadius = 8.0

        // setting profile username textfield icon
        let leftUserImageView = UIImageView()
        leftUserImageView.image = UIImage(named: "userIcon")
        let leftUserView = UIView()
        leftUserView.addSubview(leftUserImageView)

        leftUserView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftUserImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileUsernameField.leftViewMode = .always
        profileUsernameField.leftView = leftUserView

        // setting profile location textfield icon
        let leftAdressImageView = UIImageView()
        leftAdressImageView.image = UIImage(named: "locationIcon")
        let leftAdressView = UIView()
        leftAdressView.addSubview(leftAdressImageView)

        leftAdressView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftAdressImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileAdressField.leftViewMode = .always
        profileAdressField.leftView = leftAdressView

        // setting profile email textfield icon
        let leftEmailImageView = UIImageView()
        leftEmailImageView.image = UIImage(named: "emailIcon")
        let leftEmailView = UIView()
        leftEmailView.addSubview(leftEmailImageView)

        leftEmailView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftEmailImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profileEmailField.leftViewMode = .always
        profileEmailField.leftView = leftEmailView

        // setting profile phone textfield icon
        let leftPhoneImageView = UIImageView()
        leftPhoneImageView.image = UIImage(named: "phoneIcon")
        let leftPhoneView = UIView()
        leftPhoneView.addSubview(leftPhoneImageView)

        leftPhoneView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftPhoneImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profilePhoneField.leftViewMode = .always
        profilePhoneField.leftView = leftPhoneView

//         setting profile password textfield icon
        let leftPassImageView = UIImageView()
        leftPassImageView.image = UIImage(named: "passIcon")
        let leftPassView = UIView()
        leftPassView.addSubview(leftPassImageView)

        leftPassView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftPassImageView.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        profilePassField.leftViewMode = .always
        profilePassField.leftView = leftPassView
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
