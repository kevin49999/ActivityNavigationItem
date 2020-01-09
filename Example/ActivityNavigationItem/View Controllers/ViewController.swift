//
//  ViewController.swift
//  ActivityNavigationItemExample
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2020 Flower From Rock. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    private lazy var activityNavigationItem: ActivityNavigationItem = {
        return ActivityNavigationItem(navigationItem: self.navigationItem)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapDone(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimatingLeft()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.activityNavigationItem.stopAnimatingLeft()
        })
    }

    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimatingRight()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.activityNavigationItem.stopAnimatingRight()
        })
    }
}
