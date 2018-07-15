/*
//  BackLogViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class controls the behaivour of the BackLogViewController
//  screen that shows the issues of the repo in whit doing status.
//
//  TO-DO: This code will be the same as DoneViewController,
//  DoingViewController and NextViewController for this reason
//  in a future refactor is important create only one ViewController
//  called IssueViewController that received the filtered issues per status.
*/

import UIKit

class BackLogViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var backLogIssues = [Issue]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getBackLogIssues()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return backLogIssues.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = backLogIssues[indexPath.row].title
        cell.detailTextLabel?.text = backLogIssues[indexPath.row].explanation
        switch backLogIssues[indexPath.row].priorityLevel {
            case .low: cell.imageView?.image = #imageLiteral(resourceName: "lowPriority")
            case .medium: cell.imageView?.image = #imageLiteral(resourceName: "mediumPriority")
            case .hard: cell.imageView?.image = #imageLiteral(resourceName: "hardPriority")
        }
        return cell
    }
    
    func getBackLogIssues(){
        
        let loginIssue = Issue(title: "add login backlog",
                            explanation: "add login screen as first screen",
                            priorityLevel: .low)
        let facebookIssue = Issue(title: "add facebook backlog",
                            explanation: "add facebook api for login",
                            priorityLevel: .medium)
        let logoIssue = Issue(title: "new logo backlog ",
                            explanation: "chage the Logo",
                            priorityLevel: .low)
        let gmailIssue = Issue(title: "new gamil login backlog",
                            explanation: "call gmail api to allow logging",
                            priorityLevel: .low)
        self.backLogIssues = [loginIssue, facebookIssue, logoIssue, gmailIssue]
    }
}
