//
//  ViewController.swift
//  ClockFaceViewDemo
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockFaceView: ClockFaceView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       var timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
                                            target: self,
                                            selector: Selector("tick"),
                                            userInfo: nil,
                                            repeats: true)
   
      
    }
    
   func tick() {
        clockFaceView.time = NSDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

