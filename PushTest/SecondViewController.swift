//
//  SecondViewController.swift
//  PushTest
//
//  Created by MF839-018 on 2016. 5. 19..
//  Copyright © 2016년 SAMSUNG SDS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var switchVal:Bool = false
    var textFieldVal:String = ""

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabe: UILabel!
    
    @IBAction func nextWithSegue(sender: AnyObject) {
        performSegueWithIdentifier("thirdsegue", sender: self)
    }
    
    @IBAction func nextViewController(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("thirdview") {
            self.navigationController?.pushViewController(svc, animated: true)
            let thrdVC = svc as! ThirdViewController
            thrdVC.textVal = "Test"
//            thrdVC.myLabel.text = "나이소오오" // nil pointer error
//            print(self.navigationController!.viewControllers) // print out view stack
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        NSLog("view will Appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        NSLog("view did Appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSLog("view will Disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        NSLog("view did Disappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSLog("view did Load")
        // Do any additional setup after loading the view.
        firstLabel.text = textFieldVal
        if switchVal==true {
            secondLabe.text = "True"
        } else{
            secondLabe.text = "False"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
