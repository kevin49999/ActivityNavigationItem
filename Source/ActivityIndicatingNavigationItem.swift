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
    @IBInspectable public var indicatorColor: UIColor?

    // MARK: Private Variables
    
    private var initialRightBarButtonItem: UIBarButtonItem?
    private var initialLeftBarButtonItem: UIBarButtonItem?
    weak private var rightActivityIndicator: UIActivityIndicatorView?
    weak private var leftActivityIndicator: UIActivityIndicatorView?
    
    // MARK: Init
    
    public convenience init(title: String, indicatorStyle: UIActivityIndicatorViewStyle = .gray, indicatorColor: UIColor? = nil) {
        self.init(title: title)
        self.indicatorStyle = indicatorStyle
        self.indicatorColor = indicatorColor
    }
    
    private override init(title: String) {
        super.init(title: title)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Public Functions
    
    public func startAnimating(_ side: ActivityIndicatingNavigationItemSide) {
        guard !isAnimating(side) else { return }
        
        let activityIndicator = UIActivityIndicatorView.init(activityIndicatorStyle: indicatorStyle)
        activityIndicator.color = indicatorColor
        
        switch side {
        case .right:
            initialRightBarButtonItem = rightBarButtonItem
            rightBarButtonItem = nil
            rightActivityIndicator = activityIndicator
            rightBarButtonItem = UIBarButtonItem.init(customView: activityIndicator)
            rightActivityIndicator?.startAnimating()
        case .left:
            initialLeftBarButtonItem = leftBarButtonItem
            leftBarButtonItem = nil
            leftActivityIndicator = activityIndicator
            leftBarButtonItem = UIBarButtonItem.init(customView: activityIndicator)
            leftActivityIndicator?.startAnimating()
        }
    }
    
    public func stopAnimating(_ side: ActivityIndicatingNavigationItemSide) {
        guard isAnimating(side) else { return }
        
        switch side {
        case .right:
            rightActivityIndicator?.stopAnimating()
            rightActivityIndicator = nil
            rightBarButtonItem = initialRightBarButtonItem
        case .left:
            leftActivityIndicator?.stopAnimating()
            leftActivityIndicator = nil
            leftBarButtonItem = initialLeftBarButtonItem
        }
    }
    
    @discardableResult
    public func isAnimating(_ side: ActivityIndicatingNavigationItemSide)-> Bool {
        switch side {
        case .right:
            return rightActivityIndicator?.isAnimating ?? false
        case .left:
            return leftActivityIndicator?.isAnimating ?? false
        }
    }
}
