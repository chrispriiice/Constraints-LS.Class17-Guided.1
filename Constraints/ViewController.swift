//
//  ViewController.swift
//  Constraints
//
//  Created by Chris Price on 4/7/20.
//  Copyright © 2020 com.chrispriiice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubViews()
    }
    
    private func setUpSubViews() {
        
        // Creates your view
        let blueView = UIView()
        blueView.backgroundColor = .systemBlue
        
        // Don't forget to turn this off our Auto-Constraints will fight your programmatic constraints
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        // Adds your viewe to the view hierarchy
        view.addSubview(blueView)
        
        // MARK: - Constraints
        
        // X position - using layout constraints
        let blueLeadingConstraint = NSLayoutConstraint(
            item: blueView,
            attribute: .leading,
            relatedBy: .equal,
            toItem: view.safeAreaLayoutGuide,
            attribute: .leading,
            multiplier: 1,
            constant: 20)
        // Y position
        let blueCenterYConstraint = blueView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        
        // Height - using anchors
        let blueHeightConstraint = blueView.heightAnchor.constraint(equalToConstant: 100)
        
        // Width - using constraints
        let blueWidthConstraint = NSLayoutConstraint(
            item: blueView,
            attribute: .width,
            relatedBy: .equal,
            toItem: blueView,
            attribute: .height,
            multiplier: 2,
            constant: 0)
        
        NSLayoutConstraint.activate([blueLeadingConstraint, blueHeightConstraint, blueWidthConstraint, blueCenterYConstraint])
    }

}

