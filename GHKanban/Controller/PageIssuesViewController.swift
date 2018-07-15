//
//  PageIssuesViewController.swift
//  GHKanban
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class PageIssuesViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewControllerList:[UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let doneSb = sb.instantiateViewController(withIdentifier: "doneVC")
        let doingSb = sb.instantiateViewController(withIdentifier: "doingVC")
        let nextSb = sb.instantiateViewController(withIdentifier: "nextVC")
        let backLogSb = sb.instantiateViewController(withIdentifier: "backlogVC")
        
        return [doneSb, doingSb, nextSb, backLogSb]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let firstViewController = viewControllerList.first {
            self.setViewControllers([firstViewController], direction: .forward,
                                    animated: true, completion: nil)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex =  viewControllerList.index(of: viewController)
        else {
            return nil
        }
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0
        else {
            return nil
        }
        
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex =  viewControllerList.index(of: viewController)
            else {
                return nil
        }
        
        let nextIndex = vcIndex + 1
        
        guard viewControllerList.count != nextIndex else {return nil}
        guard viewControllerList.count > nextIndex else {return nil}

        return viewControllerList[nextIndex]

    }
}
