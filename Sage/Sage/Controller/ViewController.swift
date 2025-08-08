//
//  ViewController.swift
//  Sage
//
//  Created by Modibo on 07/08/2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var updateLabel: UILabel!
    
    @IBOutlet weak var setButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
   func setUpdateLabel() {
       let randomName : [String] = ["Larry","James","Magic","Kyrie","Carmelo"]
       updateLabel.text = randomName.randomElement()
    }

}

