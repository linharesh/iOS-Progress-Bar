//
//  ProgressBarViewController.swift
//  iOS-Progress-Bar
//
//  Created by Henrique do Prado Linhares on 12/12/16.
//  Copyright © 2016 Henrique do Prado Linhares. All rights reserved.
//

import UIKit

class ProgressBarViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var barView: UIView!
    @IBOutlet weak var barViewWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func drawBar(current:Float, total:Float){
        let percentage = current / total
        if (percentage >= 0){
            barViewWidthConstraint.constant = self.view.frame.width * CGFloat(percentage)
        }
    }

}
