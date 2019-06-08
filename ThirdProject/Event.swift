//
//  Event.swift
//  ThirdProject
//
//  Created by Dzmitry Matsiulka on 6/1/19.
//  Copyright © 2019 Dzmitry S. All rights reserved.
//

import Foundation


import Foundation

class Event{
    let question : String
    let correctData: Int
    let url : String
    
    init(question: String, correctData: Int, url: String){
        self.question = question
        self.correctData = correctData
        self.url = url
        
    }
}
