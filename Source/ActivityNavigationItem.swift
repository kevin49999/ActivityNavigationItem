//
//  AnimatingBarButtonItem.swift
//  TestAnimatingBarButtonItem
//
//  Created by Kevin Johnson on 10/23/17.
//  Copyright © 2017 FFR. All rights reserved.
//

import UIKit

public enum ActivityNavigationItemSide {
    case left, right
}

public final class ActivityNavigationItem: UINavigationItem {
    
    // MARK: Properties
    
    public var indicatorStyle: UIActivityIndicatorViewStyle! = .gray
    @IBInspectable public var indicatorColor: UIColor?
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
    
    // MARK: Start Animating
    
    public func startAnimating(side: ActivityNavigationItemSide) {
        guard !isAnimating(side: side) else { return }
        switch side {
        case .right:
            startAnimatingRight()
        case .left:
            startAnimatingLeft()
        }
    }
    
    private func startAnimatingRight() {
        let activityIndicator = createActivityIndicator()
        initialRightBarButtonItem = rightBarButtonItem
        rightBarButtonItem = nil
        rightActivityIndicator = activityIndicator
        rightBarButtonItem = UIBarButtonItem(customView: activityIndicator)
        rightActivityIndicator?.startAnimating()
    }
    
    private func startAnimatingLeft() {
        let activityIndicator = createActivityIndicator()
        initialLeftBarButtonItem = leftBarButtonItem
        leftBarButtonItem = nil
        leftActivityIndicator = activityIndicator
        leftBarButtonItem = UIBarButtonItem(customView: activityIndicator)
        leftActivityIndicator?.startAnimating()
    }
    
    private func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: indicatorStyle)
        activityIndicator.color = indicatorColor
        return activityIndicator
    }
    
    // MARK: - Stop Animating
    
    public func stopAnimating(side: ActivityNavigationItemSide) {
        guard isAnimating(side: side) else { return }
        switch side {
        case .right:
            stopAnimatingRight()
        case .left:
            stopAnimatingLeft()
        }
    }
    
    private func stopAnimatingRight() {
        rightActivityIndicator?.stopAnimating()
        rightActivityIndicator = nil
        rightBarButtonItem = initialRightBarButtonItem
    }
    
    private func stopAnimatingLeft() {
        leftActivityIndicator?.stopAnimating()
        leftActivityIndicator = nil
        leftBarButtonItem = initialLeftBarButtonItem
    }
    
    // MARK: - Is Animating
    
    @discardableResult
    public func isAnimating(side: ActivityNavigationItemSide)-> Bool {
        switch side {
        case .right:
            return rightActivityIndicator?.isAnimating ?? false
        case .left:
            return leftActivityIndicator?.isAnimating ?? false
        }
    }
}
