//
//  NotificationCenterVC.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

class NotificationCenterVC: UIViewController {

    @IBOutlet weak var labelToReplace: UILabel!
    
    public static let notificationName  = Notification.Name("MyNotification")
    override func viewDidLoad() {
        super.viewDidLoad()

        
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: NotificationCenterVC.notificationName, object: nil)
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "NotificationCenter", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NotificationCenter" {
            let secondNotificationVC = segue.destination as! SecondNotificationCenterVC
            secondNotificationVC.myString = ""
            
        }
    }
    
    @objc func onNotification(notification:Notification){
        let str = notification.userInfo!["str"] as? String
        labelToReplace.text = str
    }

}
