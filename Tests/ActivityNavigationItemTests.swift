//
//  ActivityNavigationItemTests.swift
//  ActivityNavigationItemTests
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2020 Flower From Rock. All rights reserved.
//

import XCTest
@testable import ActivityNavigationItem

class ActivityNavigationItemTests: XCTestCase {
    
    // MARK: System Under Test
    
    var sut: ActivityNavigationItem!
    
    // MARK: Setup/TearDown
    
    override func setUp() {
        super.setUp()
        let vc = UITableViewController()
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .save,
            target: nil,
            action: nil
        )
        vc.navigationItem.leftBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: nil,
            action: nil
        )
        _ = UINavigationController(rootViewController: vc)
        sut = ActivityNavigationItem(navigationItem: vc.navigationItem)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    // MARK: Start Animating
    
    func testRightStartAnimating() {
        sut.startAnimatingRight()
        
        guard let rightBarButtonItem = sut.navigationItem.rightBarButtonItem else {
            XCTFail()
            return
        }
        
        if let rightActivityIndicatorView = rightBarButtonItem.customView as? UIActivityIndicatorView {
            XCTAssertTrue(rightActivityIndicatorView.isAnimating)
            XCTAssertTrue(rightBarButtonItem.isEnabled)
        } else {
            XCTFail("Custom view should be UIActivityIndicatorView")
        }
    }
    
    func testLeftStartAnimating() {
        sut.startAnimatingLeft()
        
        guard let leftBarButtonItem = sut.navigationItem.leftBarButtonItem else {
            XCTFail()
            return
        }
        
        if let leftActivityIndicatorView = leftBarButtonItem.customView as? UIActivityIndicatorView {
            XCTAssertTrue(leftActivityIndicatorView.isAnimating)
            XCTAssertTrue(leftBarButtonItem.isEnabled)
        } else {
            XCTFail("Custom view should be UIActivityIndicatorView")
        }
    }
    
    // MARK: Stop Animating
    
    func testRightStopAnimating() {
        let initialRightBarButtonItem = sut.navigationItem.rightBarButtonItem
        
        sut.startAnimatingRight()
        XCTAssertNotEqual(initialRightBarButtonItem, sut.navigationItem.rightBarButtonItem)
        
        sut.stopAnimatingRight()
        XCTAssertEqual(initialRightBarButtonItem, sut.navigationItem.rightBarButtonItem)

        if sut.navigationItem.rightBarButtonItem?.customView as? UIActivityIndicatorView != nil {
            XCTFail("Should not still be UIActivityIndicatorView")
        }
        
        if let rightBarButtonItem = sut.navigationItem.rightBarButtonItem {
            XCTAssertTrue(rightBarButtonItem.isEnabled, "If right bar item non-nil, should be back to enabled")
        }
    }
    
    func testLeftStopAnimating() {
        let initialLeftBarButtonItem = sut.navigationItem.leftBarButtonItem
        
        sut.startAnimatingLeft()
        XCTAssertNotEqual(initialLeftBarButtonItem, sut.navigationItem.leftBarButtonItem)
        
        sut.stopAnimatingLeft()
        XCTAssertEqual(initialLeftBarButtonItem, sut.navigationItem.leftBarButtonItem)
        
        if sut.navigationItem.leftBarButtonItem?.customView as? UIActivityIndicatorView != nil {
            XCTFail("Should not still be UIActivityIndicatorView")
        }
        
        if let leftBarButtonItem = sut.navigationItem.leftBarButtonItem {
            XCTAssertTrue(leftBarButtonItem.isEnabled, "If left bar item non-nil, should be back to enabled")
        }
    }
}
