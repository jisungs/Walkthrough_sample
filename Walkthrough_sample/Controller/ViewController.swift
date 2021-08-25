//
//  ViewController.swift
//  Walkthrough_sample
//
//  Created by jisung on 2021/08/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var charIndex = 0.0
               let titleText = "Welcome screen test"
               for letter in titleText {
                   print("-")
                   print(0.1*charIndex)
                   print(letter)
                   Timer.scheduledTimer(withTimeInterval: 0.1*charIndex, repeats: false) { (timer) in
                       self.titleLabel.text?.append(letter)
                   }
                   charIndex += 1
               }
    }


}

