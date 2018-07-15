/*
//  Comment.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class represents the comments added to the issues.
//
//  TO-DO: This clas will be create in a future implementation
//  In this first product the user can not see the comments
*/
import Foundation

class Comment {
    
    var title: String!
    var description: String!
    var author: String!
    var date: Date!
    
    init (title: String, author: String, description: String) {
        self.title = title
        self.author = author
        self.description = description
        self.date = Date()
        let calendar = Calendar.current
        let splitDate = calendar.dateComponents([.year, .month, .day], from: date)
        // TO-DO: format the date
        print(splitDate.year as Any)
    }
}
