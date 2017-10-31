//
//  AnimatingBarButtonItem.swift
//  TestAnimatingBarButtonItem
//
//  Created by Kevin Johnson on 10/23/17.
//  Copyright © 2017 FFR. All rights reserved.
//

import UIKit

public enum ActivityIndicatingNavigationItemSide {
    case left, right
}

public final class ActivityIndicatingNavigationItem: UINavigationItem {
    
    // MARK: Public Variables
    
    public var indicatorStyle: UIActivityIndicatorViewStyle! = .gray
    
    // MARK: Private Variables
    
    private var initialRightBarButtonItem: UIBarButtonItem?
    private var initialLeftBarButtonItem: UIBarButtonItem?
    private var rightActivityIndicator: UIActivityIndicatorView?
    private var leftActivityIndicator: UIActivityIndicatorView?
    
    // MARK: Init
    
    public convenience init(title: String, indicatorStyle: UIActivityIndicatorViewStyle) {
        self.init(title: title)
        self.indicatorStyle = indicatorStyle
    }
    
    private override init(title: String) {
        super.init(title: title)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Public Functions
    
    public func startAnimating(_ side: ActivityIndicatingNavigationItemSide) {
        switch side {
        case .right:
            startAnimatingRight()
        case .left:
            startAnimatingLeft()
        }
    }
    
    public func stopAnimating(_ side: ActivityIndicatingNavigationItemSide) {
        switch side {
        case .right:
            stopAnimatingRight()
        case .left:
            stopAnimatingLeft()
        }
    }
    
    // MARK: Private Functions
    
    private func startAnimatingRight() {
        guard rightActivityIndicator == nil else { return }
        
        initialRightBarButtonItem = rightBarButtonItem
        
        let activityIndicator = UIActivityIndicatorView.init(activityIndicatorStyle: indicatorStyle)
        rightActivityIndicator = activityIndicator
        rightBarButtonItem = UIBarButtonItem.init(customView: activityIndicator)
        
        rightActivityIndicator?.startAnimating()
    }
    
    private func stopAnimatingRight() {
        rightActivityIndicator?.stopAnimating()
        rightBarButtonItem = initialRightBarButtonItem
        rightActivityIndicator = nil
    }
    
    private func startAnimatingLeft() {
        guard leftActivityIndicator == nil else { return }
        
        initialLeftBarButtonItem = leftBarButtonItem
        
        let activityIndicator = UIActivityIndicatorView.init(activityIndicatorStyle: indicatorStyle)
        leftActivityIndicator = activityIndicator
        leftBarButtonItem = UIBarButtonItem.init(customView: activityIndicator)
        
        leftActivityIndicator?.startAnimating()
    }
    
    private func stopAnimatingLeft() {
        leftActivityIndicator?.stopAnimating()
        leftBarButtonItem = initialLeftBarButtonItem
        leftActivityIndicator = nil
    }
}
