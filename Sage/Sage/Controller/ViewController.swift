//
//  ViewController.swift
//  Sage
//
//  Created by Modibo on 07/08/2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var updateLabel: UILabel!
    let quote = CallQuoteWithHTTPClient()
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var updateLabelForShowName: UILabel!
    var array : [String:String] = [:]
    @IBOutlet weak var fullLabel: UILabel!
    @IBOutlet weak var showNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Task{
            try await setUpdateLabel()
        }
    }

    func setUpdateLabel() async throws {
        
        do{
            let quoteNa =  try await quote.sendInformation()
            print("arrayRandomNumberToValues:\(array.count)")
        }
            var arraySimple : [String:String] = [:]
            for i in quoteNa{
                arraySimple = [i.name:i.text]
                array = arraySimple
                
            }
            
        }catch{
            print("error : \(error.localizedDescription)")
        }
    }

    @IBAction func setUpName(_ sender: Any) {
        if let randomQuote = array.randomElement() {
            let randomQuote = [randomQuote.key:randomQuote.value]
            for (name,text) in randomQuote {
                updateLabel.text = name
                updateLabelForShowName.text =  text
            }
        }
       
     
        print("arrayRandomNumberToValues:\(array.count)")
    }
}

