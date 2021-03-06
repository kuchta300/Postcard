//
//  ViewController.swift
//  Postcard
//
//  Created by David Kuchta on 9/22/14.
//  Copyright (c) 2014 David Kuchta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
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
        // Code will run when we press the button
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""

        // This is an extra line to see what happens with github
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.greenColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

