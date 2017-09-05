//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController {
    

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        menuView.layer.shadowOpacity = 1;
        menuView.layer.shadowRadius = 6;
       
        
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing){
        leadingConstraint.constant = -210;
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        else {
        leadingConstraint.constant = 0;
        UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        
        menuShowing = !menuShowing;
        
    }

}
