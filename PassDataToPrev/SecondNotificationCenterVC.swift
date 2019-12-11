//
//  SecondNotificationCenterVC.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

class SecondNotificationCenterVC: UIViewController {

    @IBOutlet weak var textF: UITextField!
    
    var myString : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textF.text = myString
        // Do any additional setup after loading the view.
    }
    

    @IBAction func passBack(_ sender: Any) {
        let value = textF.text!
        NotificationCenter.default.post(name: NotificationCenterVC.notificationName, object: nil, userInfo: ["str" : value])
        dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: NotificationCenterVC.notificationName, object: nil)
    }
    

}
