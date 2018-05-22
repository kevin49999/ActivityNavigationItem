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
        activityNavigationItem.startAnimating(side: .right)
    }
    
    @IBAction func tapStartSave(_ sender: UIButton) {
        activityNavigationItem.startAnimating(side: .right)
    }
    
    @IBAction func tapStopSave(_ sender: UIButton) {
        activityNavigationItem.stopAnimating(side: .right)
    }
    
    // MARK: IBAction - Left
    
    @IBAction func tapDone(_ sender: UIBarButtonItem) {
        activityNavigationItem.startAnimating(side: .left)
    }
    
    @IBAction func tapStartDone(_ sender: UIButton) {
        activityNavigationItem.startAnimating(side: .left)
    }
    
    @IBAction func tapStopDone(_ sender: UIButton) {
        activityNavigationItem.stopAnimating(side: .left)
    }
}
