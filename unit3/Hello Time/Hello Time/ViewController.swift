//
//  ViewController.swift
//  Hello Time
//
//  Created by Jayesh Sheth on 10/11/14.
//  Copyright (c) 2014 Jayesh Sheth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //This should link the timeLabel field to the label in the UI
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Ensure that the time updates after the view has loaded:
        self.checkTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Based on Objective-C example from iOS 7 in Action book
    /*
    - (void)checkTime:(id)sender
    {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"h:mm:ss a"];
    [self.timeLabel setText:[formatter stringFromDate:[NSDate date]]];
    [self performSelector:@selector(checkTime:) withObject:self
    ➥ afterDelay:1.0]; }
    */
    
    func checkTime(){
        var formatter = NSDateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("h:mm:ss a")
        var currentDateTime = formatter.stringFromDate(NSDate())
        self.timeLabel.text = currentDateTime
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("checkTime"), userInfo: nil, repeats: false )
        
    }


}

