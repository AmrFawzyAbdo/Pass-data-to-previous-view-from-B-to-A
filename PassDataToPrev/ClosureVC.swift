//
//  ClosureVC.swift
//  PassDataToPrev
//
//  Created by Amr fawzy on 12/11/19.
//  Copyright © 2019 Amr fawzy. All rights reserved.
//

import UIKit

class ClosureVC: UIViewController {

    @IBOutlet weak var labelToReplace: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func dataEnterd(_ name : String){
        labelToReplace.text = name
    }
    

    @IBAction func nextView(_ sender: Any) {
        performSegue(withIdentifier: "Closure", sender: nil)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Closure"{
            let secondClosure = segue.destination as! SecondClosureVC
            secondClosure.myString = ""
        }
    }
}
