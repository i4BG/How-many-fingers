//
//  ViewController.swift
//  How many fingers
//
//  Created by Ivaylo Todorov on 5.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuesTextFiled: UITextField!
    
    @IBOutlet var reultLabel: UILabel!
    
    @IBAction func guest(sender: AnyObject) {
        
        let dice = String(arc4random_uniform(6))
        
        if dice == userGuesTextFiled.text {
            
            reultLabel.text = "You're right!"
            
        } else {
            
            reultLabel.text = "Wrong! It was " + dice
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}