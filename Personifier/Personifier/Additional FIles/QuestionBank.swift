//
//  QuestionBank.swift
//  Personifier
//
//  Created by admin on 9/22/19.
//  Copyright © 2019 Mar. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Questions]()
    init() {
        list.append(Questions(text: "I'm somebody who would rather stay in and watch a movie than go to a party with friends", ans: true))
        list.append(Questions(text: "I would rather study at a lively coffee shop over the library", ans: false))
        list.append(Questions(text: "The idea of public speaking makes me cringe", ans: true))
        list.append(Questions(text: "I value quality over quantity when it comes to making friends", ans: true))
        list.append(Questions(text: "I often depend on my phone to avoid awkward interactions", ans: true))
        list.append(Questions(text: "A career as a consultant or a business analyst interests me", ans: false))
        list.append(Questions(text: "I perfer the city over the country", ans: false))
        list.append(Questions(text: "In relationships, I find myself making the first move", ans: false))
        list.append(Questions(text: "Interacting with strangers gives me anxiety", ans: true))
        list.append(Questions(text: "I would rather work in a group than by myself", ans: false))
        
        
        
        
        
    }
}
