//
//  ProfileVC.swift
//  hikeCarpathians
//
//  Created by User on 22.10.2021.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var userImageContainer: UIView!


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
