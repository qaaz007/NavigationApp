//
//  ViewController.swift
//  NavigationBars
//
//  Created by Adnan Aziz on 4/13/15.
//  Copyright (c) 2015 Adnan Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    @IBOutlet weak var timeLabel: UILabel!
    
    func update() {
        count++
        timeLabel.text = String(count);

    }

    @IBAction func startTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        count = 0;
        timeLabel.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func paseTimer(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

