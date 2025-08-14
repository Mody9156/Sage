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
    
    @IBOutlet weak var fullLabel: UILabel!
    @IBOutlet weak var showNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setUpdateLabel() async throws {
      
        do{
            let quoteNa =  try await quote.sendInformation()
            for i in quoteNa {
                updateLabel.text = i.name
                updateLabelForShowName.text = i.text
                fullLabel.text = i.fullText
                showNumber.text = i.number
            }
            
        }catch{
            print("error : \(error.localizedDescription)")
        }
    }

    @IBAction func setUpName(_ sender: Any) {
        Task { @MainActor in
           try? await setUpdateLabel()
        }
    }
}

