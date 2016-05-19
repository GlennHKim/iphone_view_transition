//
//  ViewController.swift
//  PushTest
//
//  Created by MF839-018 on 2016. 5. 18..
//  Copyright © 2016년 SAMSUNG SDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var switchVal:Bool = false
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func onSwitch(sender: AnyObject) {
        let updateSwitch = sender as! UISwitch
        
        if(updateSwitch.on==true){
            switchVal = true
        }else{
            switchVal = false
        }
    }
    
    @IBAction func unwindToViewController(segue:UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let secondVC = segue.destinationViewController as? SecondViewController{
            secondVC.switchVal = switchVal
            secondVC.textFieldVal = myTextField.text!
        }
    }

}

