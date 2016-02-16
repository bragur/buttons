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
        showingBlue = !showingBlue
        blueButton.hidden = !showingBlue
        
        if !showingBlue {
            blueHider.setTitle("Show Blue button", forState: .Normal)
        } else {
            blueHider.setTitle("Hide Blue button", forState: .Normal)
        }
    }

    @IBAction func hideRedButton(sender: AnyObject) {
        showingRed = !showingRed
        redButton.hidden = !showingRed
        
        if !showingRed {
            redHider.setTitle("Show Red button", forState: .Normal)
        } else {
            redHider.setTitle("Hide Red button", forState: .Normal)
        }
    }
}

