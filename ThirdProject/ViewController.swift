//
//  ViewController.swift
//  ThirdProject
//
//  Created by Dzmitry Matsiulka on 6/1/19.
//  Copyright © 2019 Dzmitry S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var event1Label: UILabel!
    @IBOutlet weak var event2Label: UILabel!
    @IBOutlet weak var event3Label: UILabel!
    @IBOutlet weak var event4Label: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var countdownTimer: Timer!
    var totalTime = 0
    
    
    var arrayOfLabels = [UILabel]()
    
    let eventProvider = EventProvider()
    var events = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTimer()
        events = eventProvider.eventBank
        events.shuffle()
        arrayOfLabels = [event1Label, event2Label,event3Label, event4Label]
        
        for label in arrayOfLabels{
            label.text = events.randomElement()?.question
        }
        
    }

    
    

    
    
    func startTimer() {
        totalTime = 60
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    @objc func updateTime() {
        timerLabel.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
    
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        //     let hours: Int = totalSeconds / 3600
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    
    @IBAction func changeOrderButtonWasPressed(_ sender: UIButton) {
        switch sender{
        case sender.tag == 0:
            
        }
        
    }
    
    
    

}

