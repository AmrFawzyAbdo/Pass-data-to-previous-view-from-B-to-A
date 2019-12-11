//
//  SecondDelegateVC.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

protocol passBack {
    func passDataBack(data : String)
}

class SecondDelegateVC: UIViewController {
    @IBOutlet weak var textF: UITextField!
    
    var Delegate : passBack?
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passBack(_ sender: Any) {
        Delegate?.passDataBack(data: textF.text!)
        dismiss(animated: true, completion: nil)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
   
    
}
