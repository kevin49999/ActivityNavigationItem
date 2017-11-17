//
//  ViewController.swift
//  ActivityIndicatingNavigationItemExample
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlet
    
    @IBOutlet weak var activityIndicatingNavigationItem: ActivityIndicatingNavigationItem!
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
    
    // MARK: IBAction - Right

    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStartSave(_ sender: UIButton) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStopSave(_ sender: UIButton) {
        activityIndicatingNavigationItem.stopAnimating(.right)
    }
    
    // MARK: IBAction - Left
    
    @IBAction func tapDone(_ sender: UIBarButtonItem) {
        activityIndicatingNavigationItem.startAnimating(.left)
    }
    
    @IBAction func tapStartDone(_ sender: UIButton) {
        activityIndicatingNavigationItem.startAnimating(.left)
    }
    
    @IBAction func tapStopDone(_ sender: UIButton) {
        activityIndicatingNavigationItem.stopAnimating(.left)
    }
    
}
