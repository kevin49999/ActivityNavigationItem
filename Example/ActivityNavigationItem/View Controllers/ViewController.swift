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
        let left = UIActivityIndicatorView()
        left.color = .systemBlue
        let right = UIActivityIndicatorView()
        right.color = .systemBlue
        return ActivityNavigationItem(navigationItem: self.navigationItem, leftActivityIndicatorView: left, rightActivityIndicatorView: right)
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
