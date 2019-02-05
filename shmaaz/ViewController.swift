//
//  ViewController.swift
//  shmaaz
//
//  Created by Ahmad Murad on 13/01/2019.
//  Copyright © 2019 Ahmad Murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables to contain our random numbers
    var randomQuestionIndex = 0
    var randomTimeIndex = 0
    var randomNextPlayerNumber = 0
    var randomTimeIndicator = 0
    
    // arrays to store different variaty of data
    let pastQuestionList = ["Describe your day", "what did you have at lunch", "who were you having dinner with"]
    let futureQuestionList2 = ["what would you like to be doing", "what are your plans for", "where do you see your self in"]
    let timeList = ["day", "week", "month", "year"]
    
    @IBOutlet weak var partyButtons: UIButton!
    @IBOutlet weak var partyButtons2: UIButton!
    @IBOutlet weak var promptsView: UILabel!
    @IBAction func allButtons(_ sender: UIButton) {
        // set random numberes appropriately
        randomQuestionIndex = Int.random(in: 0..<pastQuestionList.count)
        randomTimeIndex = Int.random(in: 0..<timeList.count)
        randomNextPlayerNumber = Int.random(in: 1...10)
        randomTimeIndicator = Int.random(in: 1...5)
        // conditional statment to recognise which button has been pressed
        if sender.tag == 1 {
            dreamOfThefuture(randomQuestionIndex, randomTimeIndex)
        }
        else if sender.tag == 2 {
            reflectOnThePast(randomQuestionIndex, randomTimeIndex)
        }
        else {
           whosNext(randomNextPlayerNumber)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        promptsView.text = "Let's partyyy 🥳"
        hideButtons()
        
    }
    
    // this function is for Dream of the future button
    func dreamOfThefuture (_ index1:Int, _ index2:Int) {
        // conditional statment to add the plural s appropriately
        if randomTimeIndicator != 1 {
            promptsView.text = "\(futureQuestionList2[index1]) \(randomTimeIndicator) \(timeList[index2])s from now"
        }
        else {
            promptsView.text = "\(futureQuestionList2[index1]) \(randomTimeIndicator) \(timeList[index2]) from now"
        }
        // calling hideButtons function to hide both dream of the future and reflect on the past buttons
        hideButtons()
    }
    // this function is for reflect on the past button
    func reflectOnThePast (_ index1:Int, _ index2:Int) {
        // conditional statment to add the plural s appropriately
        if randomTimeIndicator != 1 {
            promptsView.text = "\(pastQuestionList[index1]) \(randomTimeIndicator) \(timeList[index2])s ago"
        }
        else {
        promptsView.text = "\(pastQuestionList[index1]) \(randomTimeIndicator) \(timeList[index2]) ago"
        }
        // calling hideButtons function to hide both dream of the future and reflect on the past buttons
        hideButtons()
    }
    
    // this function is to pick the next player randomly
    func whosNext (_ random:Int) {
        partyButtons.isHidden = false
        partyButtons2.isHidden = false
        promptsView.text = "Next player is number \(random) to the right"
    }
    func hideButtons () {
        partyButtons.isHidden = true
        partyButtons2.isHidden = true
    }
}

