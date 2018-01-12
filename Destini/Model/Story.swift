//
//  Story.swift
//  Destini
//
//  Created by Jake Herman on 1/11/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
	
	let storyText : String
	let optionAText : String
	let optionBText : String
	let optionA : Int
	let optionB : Int
	
	init(text : String, option1Text : String, option2Text : String, optionAChoice : Int, optionBChoice : Int){
		
			storyText = text
			optionAText = option1Text
			optionBText = option2Text
			optionA = optionAChoice
			optionB = optionBChoice
		
	}
	
}
