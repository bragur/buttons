//
//  ViewController.swift
//  buttons
//
//  Created by Bragi Bergþórsson on 16.2.2016.
//  Copyright © 2016 Bragi Bergþórsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueButton: UIImageView!
    @IBOutlet weak var redButton: UIImageView!
    @IBOutlet weak var blueHider: UIButton!
    @IBOutlet weak var redHider: UIButton!
    var showingBlue = true
    var showingRed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueButton(sender: AnyObject) {
        if showingBlue {
            showingBlue = false
            blueButton.hidden = true
            blueHider.setTitle("Show Blue button", forState: .Normal)
        } else {
            showingBlue = true
            blueButton.hidden = false
            blueHider.setTitle("Hide Blue button", forState: .Normal)
        }
        
    }

    @IBAction func hideRedButton(sender: AnyObject) {
        if showingRed {
            showingRed = false
            redButton.hidden = true
            redHider.setTitle("Show Red button", forState: .Normal)
        } else {
            showingRed = true
            redButton.hidden = false
            redHider.setTitle("Hide Red button", forState: .Normal)
        }
    }
}

