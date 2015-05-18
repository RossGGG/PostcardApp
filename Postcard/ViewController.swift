//
//  ViewController.swift
//  Postcard
//
//  Created by Ross Gibson on 5/9/15.
//  Copyright (c) 2015 Ross Gibson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // Show name in name label
        nameLabel.hidden = false
        nameLabel.text = String(format: "Hi %@,", enterNameTextField.text)
        nameLabel.textColor = UIColor.redColor()
        
        // Show message text in message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.sizeToFit()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

