//
//  ActivityNavigationItemTests.swift
//  ActivityNavigationItemTests
//
//  Created by Kevin Johnson on 10/30/17.
//  Copyright © 2017 Flower From Rock. All rights reserved.
//

import XCTest
@testable import ActivityNavigationItem

class ActivityNavigationItemTests: XCTestCase {
    
    // MARK: SUT (System Under Test) Variable
    
    var activityItemUnderTest: ActivityNavigationItem!
    
    // MARK: Setup/TearDown
    
    override func setUp() {
        super.setUp()
        activityItemUnderTest = ActivityNavigationItem.init(title: "Test", indicatorStyle: .gray, indicatorColor: .red)
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
            XCTAssertTrue(rightActivityIndicatorView.isAnimating)
            XCTAssertTrue(rightBarButtonItem.isEnabled)
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
            XCTAssertTrue(leftActivityIndicatorView.isAnimating)
            XCTAssertTrue(leftBarButtonItem.isEnabled)
        } else {
            XCTFail("Custom view should be UIActivityIndicatorView")
        }
    }
    
    // MARK: Stop Animating
    
    func testRightStopAnimating() {
        let initialRightBarButtonItem = activityItemUnderTest.rightBarButtonItem
        
        activityItemUnderTest.startAnimating(.right)
        XCTAssertTrue(initialRightBarButtonItem != activityItemUnderTest.rightBarButtonItem)
        
        activityItemUnderTest.stopAnimating(.right)
        XCTAssertTrue(initialRightBarButtonItem == activityItemUnderTest.rightBarButtonItem)

        if let _ = activityItemUnderTest.rightBarButtonItem?.customView as? UIActivityIndicatorView {
            XCTFail("Should not still be UIActivityIndicatorView") // Possible strange use case where default value is a UIActivityIndicatorView..
        }
        
        if let rightBarButtonItem = activityItemUnderTest.rightBarButtonItem {
            XCTAssertTrue(rightBarButtonItem.isEnabled, "If right bar item non-nil, should be back to enabled")
        }
    }
    
    func testLeftStopAnimating() {
        let initialLeftBarButtonItem = activityItemUnderTest.leftBarButtonItem
        
        activityItemUnderTest.startAnimating(.left)
        XCTAssertTrue(initialLeftBarButtonItem != activityItemUnderTest.leftBarButtonItem)
        
        activityItemUnderTest.stopAnimating(.left)
        XCTAssertTrue(initialLeftBarButtonItem == activityItemUnderTest.leftBarButtonItem)
        
        if let _ = activityItemUnderTest.leftBarButtonItem?.customView as? UIActivityIndicatorView {
            XCTFail("Should not still be UIActivityIndicatorView") // ""
        }
        
        if let leftBarButtonItem = activityItemUnderTest.leftBarButtonItem {
            XCTAssertTrue(leftBarButtonItem.isEnabled, "If left bar item non-nil, should be back to enabled")
        }
    }
}
