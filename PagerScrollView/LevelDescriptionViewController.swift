//
//  LevelDescriptionViewController.swift
//  PagerScrollView
//
//  Created by Guerson on 7/25/19.
//  Copyright © 2019 ItandehuiP. All rights reserved.
//

import UIKit

class LevelDescriptionViewController: UIViewController {

    
    @IBOutlet private weak var levelNameLabel: UILabel!
    @IBOutlet private weak var levelDescriptionLabel: UILabel!
    
    var levelName: String?
    var levelDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (levelName != nil) && (levelDescription != nil){
            let fontForName = UIFont.systemFont(ofSize: 30)
            let fontForDescription = UIFont.boldSystemFont(ofSize: 20)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 10
            paragraphStyle.alignment = .center
            
            levelNameLabel.attributedText = NSAttributedString(string: levelName!, attributes: [NSAttributedString.Key.font:fontForName])
            
            levelDescriptionLabel.attributedText = NSAttributedString(string: levelDescription!, attributes: [NSAttributedString.Key.font: fontForDescription, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        }

    }
    

}
