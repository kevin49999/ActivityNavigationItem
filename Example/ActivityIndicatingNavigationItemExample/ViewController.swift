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
    
    // MARK: IBAction

    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStartAnimating(_ sender: UIButton) {
        activityIndicatingNavigationItem.startAnimating(.right)
    }
    
    @IBAction func tapStopAnimating(_ sender: UIButton) {
        activityIndicatingNavigationItem.stopAnimating(.right)
    }
}
