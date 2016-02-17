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
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
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
            blueHider.setTitle("Show Blue", forState: .Normal)
            blueLabel.text = "Blue is lost"
        } else {
            blueHider.setTitle("Hide Blue", forState: .Normal)
            blueLabel.text = "Blue is here"
        }
    }

    @IBAction func hideRedButton(sender: AnyObject) {
        showingRed = !showingRed
        redButton.hidden = !showingRed
        
        if !showingRed {
            redHider.setTitle("Show Red", forState: .Normal)
            redLabel.text = "Red is lost"
        } else {
            redHider.setTitle("Hide Red", forState: .Normal)
            redLabel.text = "Red is here"
        }
    }
}

