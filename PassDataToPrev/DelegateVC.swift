//
//  ViewController.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

class DelegateVC: UIViewController , passBack {
    func passDataBack(data: String) {
        labelToReplace.text = data
    }
    

    @IBOutlet weak var labelToReplace: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "Delegate", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Delegate"{
            let secondDelegateVC = segue.destination as! SecondDelegateVC
            secondDelegateVC.data = labelToReplace.text!
            secondDelegateVC.Delegate = self
        }
    }
    
}

