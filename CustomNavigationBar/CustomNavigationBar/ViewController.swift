//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by iOS Developer on 12/5/16.
//  Copyright © 2016 ALP. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationBarViewController?.navigationBarType = .Menu
        navigationBarViewController?.menuButtonClicked = {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

