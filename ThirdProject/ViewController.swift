//
//  ViewController.swift
//  ThirdProject
//
//  Created by Dzmitry Matsiulka on 6/1/19.
//  Copyright © 2019 Dzmitry S. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    
    @IBOutlet weak var event1Label: UILabel!
    @IBOutlet weak var event2Label: UILabel!
    @IBOutlet weak var event3Label: UILabel!
    @IBOutlet weak var event4Label: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    

    
    @IBOutlet weak var webButton1: UIButton!
    @IBOutlet weak var webButton2: UIButton!
    @IBOutlet weak var webButton3: UIButton!
    @IBOutlet weak var webButton4: UIButton!
    
    
    
    
    @IBOutlet weak var nextRoundButton: UIButton!
    
    
    
    var countdownTimer: Timer!
    var totalTime = 0
    
    var currentRound = 0
    var roundsWon = 0
    
    var arrayOfLabels = [UILabel]()
    
    let eventProvider = EventProvider()
    var events = [Event]()
    var arrayOfViews = [UIView]()
    var arrayOfWebButtons = [UIButton]()
    var urlToPass : String?
    
    @IBOutlet weak var informationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        arrayOfWebButtons = [webButton1,webButton2,webButton3,webButton4]
        events = eventProvider.eventBank
        
        newRound()
    }
    
    func newRound(){
        //blocks buttons that shows webpage for the event
        for button in arrayOfWebButtons{
            button.isEnabled = false
        }
       
        informationLabel.text = "Shake to complete"
        currentRound += 1
        events.shuffle()
        displayCurrentSet()
        startTimer()
    }
    
    func endGame(){
        informationLabel.text = "You got \(roundsWon)/\(6)"
        nextRoundButton.isHidden = false
        nextRoundButton.setImage(UIImage(named: "play_again"), for: .normal)
        currentRound = 0
    }
    func checkCorrectness(){
       
        //compares dates of the presented events
        if events[0].correctData < events[1].correctData && events [1].correctData < events[2].correctData && events[2].correctData<events[3].correctData{
            
            
            print("Everything looks alright")
                  nextRoundButton.setImage(UIImage(named: "next_round_success"), for: .normal)
            informationLabel.text = "The information buttons will give a web page"
            
            roundsWon += 1
        }
        else{
            
        nextRoundButton.setImage(UIImage(named: "next_round_fail"), for: .normal)
            informationLabel.text = "The information buttons will give a web page"
        }
        
        
        for button in arrayOfWebButtons{
            button.isEnabled = true
        }
        
    }
    
    func displayCurrentSet(){
        event1Label.text = events[0].question
        event2Label.text = events[1].question
        event3Label.text = events[2].question
        event4Label.text = events[3].question
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
            checkCorrectness()
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
        switch sender.tag{
        //switch first and second element
        case 0:
            swapEvents(index: 0, index: 1)
        case 1:
            swapEvents(index: 0, index: 1)
        
        //switch second and third element
        case 2:
           swapEvents(index: 1, index: 2)
             displayCurrentSet()
        case 3:
            swapEvents(index: 1, index: 2)
            
        //switch third and forth elemenet
        case 4:
            swapEvents(index: 2, index: 3)
        default:
           swapEvents(index: 2, index: 3)
        }
         displayCurrentSet()
    }
    
    func swapEvents(index firstEvent: Int, index secondEvent: Int){
        let temp = events[firstEvent]
        events[firstEvent] = events[secondEvent]
        events[secondEvent] = temp
    }
    
    @IBAction func webInformationButtonPressed(_ sender: UIButton) {
        
    urlToPass = events[sender.tag].url
    performSegue(withIdentifier: "webViewSegue", sender: nil)
     
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        endTimer()
        checkCorrectness()
        nextRoundButton.isHidden = false
    }
    
    @IBAction func nextRoundButtonPressed(_ sender: Any) {
        if currentRound == 6{
            endGame()
        }
        else{
        newRound()
            nextRoundButton.isHidden = true
            
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "webViewSegue" {
            let webViewContoller = segue.destination as! WebViewViewController
            webViewContoller.urlToLoad = urlToPass!
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}


