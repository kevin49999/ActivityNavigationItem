//
//  BackViewController.swift
//  ActivityNavigationItemExample
//
//  Created by Kevin Johnson on 11/25/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {

    // MARK: IBOutlet
    
    @IBOutlet weak var activityNavigationItem: ActivityNavigationItem!
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    
    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimating(side: .right)
    }
    
    @IBAction func tapStartSave(_ sender: UIButton) {
        activityNavigationItem.startAnimating(side: .right)
    }
    
    @IBAction func tapStopSave(_ sender: UIButton) {
        activityNavigationItem.stopAnimating(side: .right)
    }
}
