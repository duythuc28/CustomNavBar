//
//  CustomNavBarViewController.swift
//  CustomNavigationBar
//
//  Created by iOS Developer on 12/5/16.
//  Copyright © 2016 ALP. All rights reserved.
//

import UIKit

enum NavigationType {
    case Menu
    case Back
}

class CustomNavBarViewController: UIViewController {

    @IBOutlet weak var urgentButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    var menuButtonClicked:(()->Void)!
    var urgentButtonClicked:(()->Void)!
    
    var navigationBarType: NavigationType = .Back {
        didSet {
            if navigationBarType == .Back {
                menuButton.setImage(UIImage(named: "Back-50"), forState: UIControlState.Normal)
            } else {
                menuButton.setImage(UIImage(named: "Menu-50"), forState: UIControlState.Normal)
            }
        }
    }
    
    @IBAction func menuButtonClicked(sender: AnyObject) {
        if navigationBarType == .Back {
            parentViewController?.navigationController?.popViewControllerAnimated(true)
        } else {
            if menuButtonClicked != nil {
                menuButtonClicked()
            }
        }
    }

    @IBAction func urgentButtonClicked(sender: AnyObject) {
        if urgentButtonClicked != nil {
            urgentButtonClicked()
        }
    }
    
    init(frame:CGRect, parentController: UIViewController) {
        super.init(nibName: "CustomNavBarViewController", bundle: nil)
        view.frame = frame
        parentController.addChildViewController(self)
        parentController.view.addSubview(self.view)
        parentController.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
