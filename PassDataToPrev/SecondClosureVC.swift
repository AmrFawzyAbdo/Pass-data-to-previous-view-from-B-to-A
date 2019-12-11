//
//  SecondClosureVC.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

class SecondClosureVC: UIViewController {

    @IBOutlet weak var textF: UITextField!
    
    var myString : String = ""
    var completionHandler:((String) -> Int)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getData()-> String{
        let name = textF.text!
        return name
    }

    @IBAction func passBack(_ sender: Any) {
        if let controller = presentingViewController as? ClosureVC{
            dismiss(animated: true, completion: {controller.dataEnterd(self.getData())})
        }
    }
  

}
