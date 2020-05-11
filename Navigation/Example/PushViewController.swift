//
//  PushViewController.swift
//  presentingViewController
//
//  Created by Rahul Sharma on 06/02/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {
    
    @IBAction func popViewcontroller(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    //    private func popnavigationcontroller() {
    //
    //        popVC(1, animationType: .fade, subType: .fromBottom)
    //
    //    }
    
}

extension PushViewController: UIViewControllerTransitioningDelegate {
    
}

