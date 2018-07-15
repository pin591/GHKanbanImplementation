/*
//  DoneViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class controls the behaivour of the DoneViewController
//  screen that shows the issues of the repo in whit doing status.
//
//  TO-DO: This code will be the same as DoingViewController,
//  BackLogViewController and NextViewController for this reason
//  in a future refactor is important create only one ViewController
//  called IssueViewController that received the filtered issues per status.
*/

import UIKit

class DoneViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var doneIssues = [Issue]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getDoneIssues()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return doneIssues.count
    }
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = doneIssues[indexPath.row].title
        cell.detailTextLabel?.text = doneIssues[indexPath.row].explanation
        return cell
    }
    
    func getDoneIssues(){
        
        let loginIssue = Issue(title: "add login done done",
                        explanation: "add login screen as first screen",
                        priorityLevel: .medium)
        let facebookIssue = Issue(title: "add facebook done",
                        explanation: "add facebook api for login",
                        priorityLevel: .medium)
        let logoIssue = Issue(title: "new logo done",
                        explanation: "chageLogo the logo",
                        priorityLevel: .low)
        let gmailIssue = Issue(title: "new gamil login done",
                        explanation: "call gmail api to allow logging",
                        priorityLevel: .medium)
        self.doneIssues = [loginIssue, facebookIssue, logoIssue, gmailIssue]
    }
}
