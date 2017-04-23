//
//  ViewController.swift
//  StopWatch
//
//  Created by Charles You on 2017-02-16.
//  Copyright © 2017 Charles You. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timekeeper: Timer?
    let stopWatch = Stopwatch()
    
    @IBOutlet weak var actualTimer: UILabel!
    
    @IBAction func startButton(_ sender: UIButton) {
        stopWatch.start()
        timekeeper = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                              selector: #selector(ViewController.callSomeMethodWithParams(_ :)),
                                              userInfo: nil,
                                              repeats: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func callSomeMethodWithParams(_ timer: Timer) {
        actualTimer.text = stopWatch.convertToString()

    }
    
    

    @IBAction func stopButton(_ sender: UIButton) {
        timekeeper!.invalidate()
    }
    
    

}

