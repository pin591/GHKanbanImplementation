/*
//  NextViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class controls the behaivour of the NextViewController
//  screen that shows the issues of the repo in whit doing status.
//
//  TO-DO: This code will be the same as DoingViewController,
//  BackLogViewController and DoneViewController for this reason
//  in a future refactor is important create only one ViewController
//  called IssueViewController that received the filtered issues per status.
*/

import UIKit

class NextViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var nextIssues = [Issue]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getNextIssues()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return nextIssues.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = nextIssues[indexPath.row].title
        cell.detailTextLabel?.text = nextIssues[indexPath.row].explanation
        switch nextIssues[indexPath.row].priorityLevel {
            case .low: cell.imageView?.image = #imageLiteral(resourceName: "lowPriority")
            case .medium: cell.imageView?.image = #imageLiteral(resourceName: "mediumPriority")
            case .hard: cell.imageView?.image = #imageLiteral(resourceName: "hardPriority")
        }
        return cell
    }
    
    func getNextIssues(){
        
        let loginIssue = Issue(title: "add login next",
                            explanation: "add login screen as first screen",
                            priorityLevel: .hard)
        let facebookIssue = Issue(title: "add facebook next",
                            explanation: "add facebook api for login",
                            priorityLevel: .hard)
        let logoIssue = Issue(title: "new logo next ",
                            explanation: "chage the Logo",
                            priorityLevel: .hard)
        let gmailIssue = Issue(title: "new gamil login next",
                            explanation: "call gmail api to allow logging",
                            priorityLevel: .low)
        self.nextIssues = [loginIssue, facebookIssue, logoIssue, gmailIssue]
    }
}
