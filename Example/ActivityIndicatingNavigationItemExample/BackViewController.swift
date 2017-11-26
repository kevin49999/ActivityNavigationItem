//
//  BackViewController.swift
//  ActivityIndicatingNavigationItemExample
//
//  Created by Kevin Johnson on 11/25/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {

    // MARK: IBOutlet
    
    @IBOutlet weak var activityIndicatingNavigationItem: ActivityIndicatingNavigationItem!
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    
    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStartSave(_ sender: UIButton) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStopSave(_ sender: UIButton) {
        activityIndicatingNavigationItem.stopAnimating(.right)
    }
}
