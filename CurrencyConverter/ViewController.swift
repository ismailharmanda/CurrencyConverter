//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by ismail harmanda on 5.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    @IBAction func onPressGetRates(_ sender: UIButton) {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=2addceb4937e131ddc7047aa2cf1204c")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: URLRequest(url: url!)) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler:nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                
                if data != nil {
                    
                }
            }
        }
    }
    
}

