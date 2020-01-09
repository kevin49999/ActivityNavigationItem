//
//  ActivityNavigationItem.swift
//  ActivityNavigationItem
//
//  Created by Kevin Johnson on 10/23/17.
//  Copyright © 2020 Flower From Rock. All rights reserved.
//

import UIKit

public class ActivityNavigationItem {

    unowned let navigationItem: UINavigationItem
    private let leftActivityIndicatorView: UIActivityIndicatorView
    private let rightActivityIndicatorView: UIActivityIndicatorView
    private var originalLeftBarButtonItem: UIBarButtonItem?
    private var originalRightBarButtonItem: UIBarButtonItem?
    private lazy var leftActivityIndicatorBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(customView: leftActivityIndicatorView)
    }()
    private lazy var rightActivityIndicatorBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(customView: rightActivityIndicatorView)
    }()
    
    public init(
        navigationItem: UINavigationItem,
        leftActivityIndicatorView: UIActivityIndicatorView = .init(style: .medium),
        rightActivityIndicatorView: UIActivityIndicatorView = .init(style: .medium)
    ) {
        self.navigationItem = navigationItem
        self.leftActivityIndicatorView = leftActivityIndicatorView
        self.rightActivityIndicatorView = rightActivityIndicatorView
    }

    public func startAnimatingRight() {
        originalRightBarButtonItem = navigationItem.rightBarButtonItem
        navigationItem.rightBarButtonItem = rightActivityIndicatorBarButtonItem
        rightActivityIndicatorBarButtonItem.startAnimating()
    }

    public func stopAnimatingRight() {
        rightActivityIndicatorBarButtonItem.stopAnimating()
        navigationItem.rightBarButtonItem = originalRightBarButtonItem
    }

    public func startAnimatingLeft() {
        originalLeftBarButtonItem = navigationItem.leftBarButtonItem
        navigationItem.leftBarButtonItem = leftActivityIndicatorBarButtonItem
        leftActivityIndicatorBarButtonItem.startAnimating()
    }

    public func stopAnimatingLeft() {
        leftActivityIndicatorBarButtonItem.stopAnimating()
        navigationItem.leftBarButtonItem = originalLeftBarButtonItem
    }
}

fileprivate extension UIBarButtonItem {
    var activityIndicatorView: UIActivityIndicatorView? {
        if let indicator = customView as? UIActivityIndicatorView {
            return indicator
        }
        return nil
    }

    func startAnimating() {
        activityIndicatorView?.startAnimating()
    }

    func stopAnimating() {
        activityIndicatorView?.stopAnimating()
    }
}
