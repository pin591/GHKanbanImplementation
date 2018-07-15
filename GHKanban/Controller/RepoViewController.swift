/*
//  RepoViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
// This class list all the user repos in the firstTab.
// And the local repos stored in the device in the secondTab.
// To store a repo locally swipe the cell and select store in
// the first tab.
// To remove a repo for the local memory of the device swipe
// the cell and select delete in the second tab.
*/

import UIKit

class RepoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var repos = [Repo]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getRemoteRepos()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
    
        return repos.count
    }
    
    func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = repos[indexPath.row].name
        cell.detailTextLabel?.text = repos[indexPath.row].author
        return cell
    }
    
    func tableView(_ tableView: UITableView,
        trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = deleteAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    func deleteAction(at indexPath: IndexPath) -> UIContextualAction {
        
        let action = UIContextualAction(style: .destructive, title:"Delete") {
            (action, view, completion) in
            self.repos.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            //self.repos[indexPath.row].isLocal = true
            completion(true)
        }
        action.image = #imageLiteral(resourceName: "local")
        action.backgroundColor = .gray
        return action
    }
    
    func getRemoteRepos () {
        
        let repoWikiCat = Repo(name: "WikiCat", author: "Ana Rebollo")
        let repoWikiDog = Repo(name: "WikiDog", author: "Ana Rebollo")
        let repoWikiTravel = Repo(name: "WikiTravel", author: "Ana Rebollo")
        let repoWikiChoc = Repo(name: "WikiChoc", author: "Ana Rebollo")
        self.repos = [repoWikiCat,repoWikiDog,repoWikiTravel,repoWikiChoc]
    }
}

