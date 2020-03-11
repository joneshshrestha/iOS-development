//
//  Questions.swift
//  Quizzler
//
//  Created by Jonesh Shrestha on 3/10/20.

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
