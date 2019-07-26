//
//  ViewController.swift
//  PagerScrollView
//
//  Created by Guerson on 7/25/19.
//  Copyright © 2019 ItandehuiP. All rights reserved.
//

import UIKit

class LevelDescriptorViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let page1 = configureAndAddSubviews()
        let page2 = configureAndAddSubviews()
        let page3 = configureAndAddSubviews()
        let page4 = configureAndAddSubviews()


        let views: [String: UIView] = ["view": view, "page1": page1.view, "page2": page2.view, "page3": page3.view, "page4": page4.view]
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[page1(==view)]|", options: [], metrics: nil, views: views)
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[page1(==view)][page2(==view)][page3(==view)][page4(==view)]|", options: [.alignAllTop, .alignAllBottom], metrics: nil, views: views)
        NSLayoutConstraint.activate(verticalConstraints + horizontalConstraints)

    }

    private func configureAndAddSubviews() -> LevelDescriptionViewController {
         let descriptedLevelViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"LevelDescriptionViewController") as! LevelDescriptionViewController
        
        descriptedLevelViewController.view.translatesAutoresizingMaskIntoConstraints = false
        descriptedLevelViewController.levelName = "Test One"
        descriptedLevelViewController.levelDescription = "Test one with description, here goes the description of the respective level"
        scrollView.addSubview(descriptedLevelViewController.view)
        addChild(descriptedLevelViewController)
        descriptedLevelViewController.didMove(toParent: self)
        return descriptedLevelViewController
    }

}

extension LevelDescriptorViewController: UIScrollViewDelegate {
    
}

