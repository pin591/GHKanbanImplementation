/*
//  DBConnection.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class controls allow do the basic CRUD operation (create, read, update, delete)
//  in the device DB.
//
//  TO-DO: This class will be created in a future implementation for the
//  moment the connections to the database will be acopladded inside the
//  Models not respecting the design MVC principles.
//
// TO-DO: For the moment moment in our db model we store the issues and
// the repos for simplicity but when the project grows is important find
// the way to store less information, for example only the name of the
// local repos to identified them and later request to the api the the
// remaining parameters and the same behaivour for issues.
//
// If the project grows this class will be huge and difficult to read in
// this case a better opction is use extensions of the different model object
// that we want to store
*/

import Foundation

class DBConnection {
    
    func getRepos(id:Int) {
        
    }
    
    func insertRepos(id:Int) {
    
    }
    
    func insertIssue(id:Int, title: String, author: String) {
        
    }
    
    func getIssue(id:Int) {
        
    }
    
    func insertIssue(id:Int) {
        
    }
    
    func updateIssueStatus(status:String) {
        
    }
    
    func deleteIssue(id:Int) {
        
    }
    
    // TO-DO: The next four functions can be one called selectIssuesPerStatus
    // sending the status as a parameter to the function.
    func selectIssuesWhitBackLogStatus(id:Int) {
        
    }
    
    func selectIssuesWithDoneStatus() {
        
    }
    
    func selectIssuesWithDoingStatus() {
        
    }
    
    func selectIssuesWithNextStatus() {
        
    }
    
    // TO-DO: This funtion will be created in the future when the product allow
    // comments
    func insertComent(id:Int, title: String, Comments: String) {
        
    }
    
    func getComment(id:Int) {
        
    }

    func deleteComment(id:Int) {
        
    }
    
    func selectCommentForIssue(id:Int) {
        
    }

}
