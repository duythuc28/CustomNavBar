//
//  ViewController2.swift
//  CustomNavigationBar
//
//  Created by iOS Developer on 12/5/16.
//  Copyright © 2016 ALP. All rights reserved.
//

import UIKit

class ViewController2: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarViewController?.navigationBarType = .Back
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
