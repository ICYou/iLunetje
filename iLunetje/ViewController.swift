//
//  ViewController.swift
//  iLunetje
//
//  Created by Joseph Siu on 26/10/15.
//  Copyright © 2015 Jozef Siu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Button: UIButton!

    @IBOutlet weak var bridgeImage: UIImageView!
    
    @IBAction func lichtSwitch(sender: AnyObject) {
        if (Button.titleLabel?.text! == "Doe het licht aan!"){
            Button.setTitle("Doe het licht uit!", forState: UIControlState.Normal)
        }
        else{
             Button.setTitle("Doe het licht aan!", forState: UIControlState.Normal)
        }
        
        self.flash()
        
        let ok = HueController()
        ok.HueSetup()

    }
    
    func flash() {
        UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .Repeat, animations: { () -> Void in
            self.bridgeImage.alpha = 0.0
            }, completion: nil)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
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

