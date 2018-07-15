/*
//  DoingViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class controls the behaivour of the DoingViewController
//  screen that shows the issues of the repo in whit doing status.
//
//  TO-DO: This code will be the same as DoneViewController,
//  BackLogViewController and NextViewController for this reason
//  in a future refactor is important create only one ViewController
//  called IssueViewController that received the filtered issues per status.
*/

import UIKit

class DoingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var doingIssues = [Issue]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getDoingIssue()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return doingIssues.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = doingIssues[indexPath.row].title
        cell.detailTextLabel?.text = doingIssues[indexPath.row].explanation
        return cell
    }
    
    func getDoingIssue(){
        
        let loginIssue = Issue(title: "add login doing",
                            explanation: "add login screen as first screen",
                            priorityLevel:.low)
        let facebookIssue = Issue(title: "add facebook doing",
                            explanation: "add facebook api for login",
                            priorityLevel:.medium)
        let logoIssue = Issue(title: "new logo doing",
                            explanation: "chage the logo",
                            priorityLevel:.low)
        let gmailIssue = Issue(title: "new gmail login doing",
                            explanation: "call gmail api to allow logging",
                            priorityLevel:.hard)
        self.doingIssues = [loginIssue, facebookIssue, logoIssue, gmailIssue]
    }
}
