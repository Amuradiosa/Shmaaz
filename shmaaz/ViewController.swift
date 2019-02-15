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
    let pastQuestionList = ["Describe your day", "who were you having dinner with", "What accomplishment did you achieve", "Where did you go in a holiday",]
    let futureQuestionList2 = ["what would you like to be doing","What are you planing to get done by", "what are your plans for the next", "where do you see your self in"]
    let timeList = ["day", "week", "month", "year"]
    
    // outlets for our buttons so as to change thier appearances properties
    @IBOutlet weak var partyButtons: UIButton!
    @IBOutlet weak var partyButtons2: UIButton!
    @IBOutlet weak var whosNextButton: UIButton!
    // label to display our prompt messages
    @IBOutlet weak var promptsView: UILabel!
    @IBAction func dreamOfTheFuture(_ sender: UIButton) {
        // conditional statment to make questions more relative and memorable as to time
        if randomQuestionIndex == 0 || randomQuestionIndex == 1 {
            randomTimeIndex = Int.random(in: 0...1)
            // conditional statment to add the plural s appropriately
            if randomTimeIndicator != 1 {
                promptsView.text = "\(futureQuestionList2[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex])s from now?"
            }
            else {
                promptsView.text = "\(futureQuestionList2[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex]) from now?"
            }
        }
        else {
            randomTimeIndex = Int.random(in: 2...3)
            // conditional statment to add the plural s appropriately
            if randomTimeIndicator != 1 {
                promptsView.text = "\(futureQuestionList2[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex])s from now?"
            }
            else {
                promptsView.text = "\(futureQuestionList2[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex]) from now?"
            }
            
        }
        hideButtons(true)
        whosNextButton.isEnabled = true
    }
    
    @IBAction func reflectOnThePast(_ sender: UIButton) {
        // conditional statment to make questions more relative and memorable as to time
        if randomQuestionIndex == 0 || randomQuestionIndex == 1 {
            randomTimeIndex = Int.random(in: 0...1)
            // conditional statment to add the plural s appropriately
            if randomTimeIndicator != 1 {
                promptsView.text = "\(pastQuestionList[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex])s ago?"
            }
            else {
                promptsView.text = "\(pastQuestionList[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex]) ago?"
            }
        }
        else {
            randomTimeIndex = Int.random(in: 2...3)
            // conditional statment to add the plural s appropriately
            if randomTimeIndicator != 1 {
                promptsView.text = "\(pastQuestionList[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex])s ago?"
            }
            else {
                promptsView.text = "\(pastQuestionList[randomQuestionIndex]) \(randomTimeIndicator) \(timeList[randomTimeIndex]) ago?"
            }
        }
        hideButtons(true)
        whosNextButton.isEnabled = true
    }
    
    @IBAction func whosNext(_ sender: UIButton) {
        // set random numberes appropriately
        randomQuestionIndex = Int.random(in: 0..<pastQuestionList.count)
        randomTimeIndex = Int.random(in: 0..<timeList.count)
        randomNextPlayerNumber = Int.random(in: 1...10)
        randomTimeIndicator = Int.random(in: 1...5)
        // calling hideButtons func to make the other two buttons appear
        hideButtons(false)
        // selecting the next player
        promptsView.text = "Next player is number \(randomNextPlayerNumber) to the right"
        whosNextButton.setTitle("Who's Next?", for: .normal)
        // disable the whosNextButton
        whosNextButton.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set the intial wording for promptsView and whosNextButton
        promptsView.text = "Let's partyyy 🥳"
        whosNextButton.setTitle("Let's do it👻", for: .normal)
        hideButtons(true)
    }
    
    // a func resposible for hiding and appearing of two of our buttons
    func hideButtons (_ state : Bool) {
        partyButtons.isHidden = state
        partyButtons2.isHidden = state
    }
}


