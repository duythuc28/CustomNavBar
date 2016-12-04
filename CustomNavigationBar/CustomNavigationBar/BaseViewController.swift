//
//  BaseViewController.swift
//  CustomNavigationBar
//
//  Created by iOS Developer on 12/5/16.
//  Copyright © 2016 ALP. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var navigationBarViewController: CustomNavBarViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNavView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadNavView() {
        navigationBarViewController = CustomNavBarViewController(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80), parentController: self)
        
    }

}
