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
        
        customLabel()
        
        Task {
              do {
                  try await setUpdateLabel()
                  
                  if let randomQuote = array.randomElement() {
                      updateLabel.text = randomQuote.key
                      updateLabelForShowName.text =  randomQuote.value
                  }
                  
              } catch {
                  print(error.localizedDescription)
              }
          }
    }
    
    
    func setUpdateLabel() async throws {
        
        do{
            let quoteRandom =  try await quote.sendInformation()
      
            for i in quoteRandom {

                array[i.name] = i.text
                
            }
            
        }catch{
            print("error : \(error.localizedDescription)")
        }
    }

    @IBAction func setUpName(_ sender: Any) {
       
        if let randomQuote = array.randomElement() {
            updateLabel.text = randomQuote.key
            updateLabelForShowName.text =  randomQuote.value
        }
       
     
        print("arrayRandomNumberToValues:\(array.count)")
    }
    
    func customLabel() {
        updateLabelForShowName.textColor = .white
        updateLabelForShowName.textAlignment = .left
        updateLabelForShowName.numberOfLines = 0
        
    }
}


