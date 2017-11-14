//
//  ActivityIndicatingNavigationItemTests.swift
//  ActivityIndicatingNavigationItemTests
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import XCTest
@testable import ActivityIndicatingNavigationItem

class ActivityIndicatingNavigationItemTests: XCTestCase {
    
    // MARK: SUT (System Under Test) Variable
    
    var activityItemUnderTest: ActivityIndicatingNavigationItem!
    
    // MARK: Setup/TearDown
    
    override func setUp() {
        super.setUp()
        activityItemUnderTest = ActivityIndicatingNavigationItem.init(title: "Test", indicatorStyle: .gray)
        activityItemUnderTest.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .save, target: nil, action: nil)
        activityItemUnderTest.leftBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .done, target: nil, action: nil)
    }
    
    override func tearDown() {
        activityItemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: Start Animating
    
    func testRightStartAnimating() {
        activityItemUnderTest.startAnimating(.right)
        
        guard let rightBarButtonItem = activityItemUnderTest.rightBarButtonItem else { XCTFail()
            return
        }
        
        if let rightActivityIndicatorView = rightBarButtonItem.customView as? UIActivityIndicatorView {
            XCTAssertTrue(rightBarButtonItem.isEnabled)
            XCTAssertTrue(rightActivityIndicatorView.isAnimating)
        } else {
            XCTFail("Custom view should be UIActivityIndicatorView")
        }
    }
    
    func testLeftStartAnimating() {
        activityItemUnderTest.startAnimating(.left)
        
        guard let leftBarButtonItem = activityItemUnderTest.leftBarButtonItem else { XCTFail()
            return
        }
        
        if let leftActivityIndicatorView = leftBarButtonItem.customView as? UIActivityIndicatorView {
            XCTAssertTrue(leftBarButtonItem.isEnabled)
            XCTAssertTrue(leftActivityIndicatorView.isAnimating)
        } else {
            XCTFail("Custom view should be UIActivityIndicatorView")
        }
    }
    
    // MARK: Stop Animating
    
    func testRightStopAnimating() {
        activityItemUnderTest.startAnimating(.right)
        activityItemUnderTest.stopAnimating(.right)

        if let _ = activityItemUnderTest.rightBarButtonItem?.customView as? UIActivityIndicatorView {
            XCTFail("Should not still be UIActivityIndicatorView") // Possible strange use case where default value as a UIActivityIndicatorView..
        }
        
        if let rightBarButtonItem = activityItemUnderTest.rightBarButtonItem {
            XCTAssertTrue(rightBarButtonItem.isEnabled, "If right bar item non-nil, should be back to enabled")
        }
    }
    
    func testLeftStopAnimating() {
        activityItemUnderTest.startAnimating(.left)
        activityItemUnderTest.stopAnimating(.left)
        
        if let _ = activityItemUnderTest.leftBarButtonItem?.customView as? UIActivityIndicatorView {
            XCTFail("Should not still be UIActivityIndicatorView") // ""
        }
        
        if let leftBarButtonItem = activityItemUnderTest.leftBarButtonItem {
            XCTAssertTrue(leftBarButtonItem.isEnabled, "If left bar item non-nil, should be back to enabled")
        }
    }
}
