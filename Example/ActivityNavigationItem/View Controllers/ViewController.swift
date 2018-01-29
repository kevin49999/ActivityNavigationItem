//
//  ViewController.swift
//  ActivityNavigationItemExample
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlet
    
    @IBOutlet weak var activityNavigationItem: ActivityNavigationItem!
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction - Right

    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStartSave(_ sender: UIButton) {
        activityNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStopSave(_ sender: UIButton) {
        activityNavigationItem.stopAnimating(.right)
    }
    
    // MARK: IBAction - Left
    
    @IBAction func tapDone(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimating(.left)
    }
    
    @IBAction func tapStartDone(_ sender: UIButton) {
        activityNavigationItem.startAnimating(.left)
    }
    
    @IBAction func tapStopDone(_ sender: UIButton) {
        activityNavigationItem.stopAnimating(.left)
    }
}
