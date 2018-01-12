//
//  ViewController.swift
//  Destini
//
//  Created by Jake Herman on 1/11/18.
//  Copyright © 2018 Jake Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let allStorys = StoryBank().list
	
	var currentStory = 0

    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
		if sender.tag == -1{
			startOver()
		} else{
			nextStory(selected : sender.tag)
		}
    }
	
	func updateUI() {
		storyTextView.text = allStorys[currentStory].storyText
		topButton.setTitle(allStorys[currentStory].optionAText, for: .normal)
		bottomButton.setTitle(allStorys[currentStory].optionBText, for: .normal)
		topButton.tag = allStorys[currentStory].optionA
		bottomButton.tag = allStorys[currentStory].optionB
		if currentStory >= 3 {
			bottomButton.isHidden = true
		}
	}
	
	func nextStory(selected : Int){
		if selected == allStorys[currentStory].optionA {
			currentStory = allStorys[currentStory].optionA - 1
		} else if selected == allStorys[currentStory].optionB{
			currentStory = allStorys[currentStory].optionB - 1
		}
		updateUI()
	}
	
	func startOver(){
		currentStory = 0
		bottomButton.isHidden = false
		updateUI()
	}

}

