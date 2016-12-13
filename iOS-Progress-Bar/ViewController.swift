//
//  ViewController.swift
//  iOS-Progress-Bar
//
//  Created by Henrique do Prado Linhares on 12/12/16.
//  Copyright © 2016 Henrique do Prado Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let progressBarViewCtrl = ProgressBarViewController()
        progressBarViewCtrl.view.frame = CGRect(x: 0, y: 0, width: self.myView.frame.width, height: self.myView.frame.height)
        self.addChildViewController(progressBarViewCtrl)
        
        self.myView.addSubview(progressBarViewCtrl.view)
        progressBarViewCtrl.drawBar(current: 37, total: 100)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

