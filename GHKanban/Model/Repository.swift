/*
//  Repo.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class represents the repositories
//
//  TO-DO: In this first iteration not all the repo propeties will
//  be used. Only the name and author, but in the future the other
//  paramenters will be shown in the final product
*/

class Repo {
    
    var name: String!
    var author: String!
    var local: Bool!
    var issues: [Issue]
    
    init(name:String, author: String) {
        self.name = name
        self.author = author
        self.local = false
        self.issues = []
    }
    
    func storeRepositoryLocally() {
        self.local = 1
    }
    
    func returnBacklogIssues() -> [Issue] {
        // Return the issues for the given repo with Backlog status in our local DB
        return []
    }
    func returnDoneIssues() -> [Issue] {
        // Return the issues for the given repo with done status in our local DB
        return []
    }
    func returnDoingIssues() -> [Issue] {
        // Return the issues for the given repo with doing status in our local DB
        return []
    }
    func returnNextIssues() -> [Issue] {
        // Return the issues for the given repo with next status in our local DB
        return []
    }
}
