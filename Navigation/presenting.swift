//
//  presenting.swift
//  presentingViewController
//
//  Created by Rahul Sharma on 06/02/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func presentVC(_ viewControllerFromPresent: UIViewController, viewControllerToPresent: UIViewController, animated flag: Bool,animationType: CATransitionType, duration: CFTimeInterval,  completion: (() -> Void)? = nil) {
        
        animationWithOutNavigationController(viewControllerFromPresent, caAnimationType: animationType, cfDuration: duration)
        viewControllerFromPresent.present(viewControllerToPresent, animated: flag, completion: completion)
    }
    
    func dismissVC(viewControllerFromPresent: UIViewController,animationType: CATransitionType, duration: CFTimeInterval, animated flag: Bool, completion: (() -> Void)? = nil) {
        animationWithOutNavigationController(viewControllerFromPresent, caAnimationType: animationType, cfDuration: duration)
        dismiss(animated: flag, completion: completion)
    }
    
    func pushVC(_ formViewController: UIViewController, toViewController: UIViewController, animationType: CATransitionType, subType: CATransitionSubtype, duration: CFTimeInterval) {
        animationWithNavigationController(animationType, casubType: subType, cfduration: duration)
        if formViewController.navigationController != nil {
            navigationController?.pushViewController(toViewController, animated: false)
        } else {
            let navController = UINavigationController(rootViewController: toViewController)
            navigationController?.pushViewController(navController, animated: false)
        }
    }
    
    func popVC(_ duration: CFTimeInterval, animationType: CATransitionType, subType: CATransitionSubtype) {
        animationWithNavigationController(animationType, casubType: subType, cfduration: duration)
        navigationController?.popViewController(animated: false)
    }
    
    fileprivate func animationWithNavigationController(_  caanimationType: CATransitionType, casubType: CATransitionSubtype, cfduration: CFTimeInterval) {
        let transition = CATransition()
        transition.duration = cfduration
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = caanimationType
        transition.subtype = casubType
        navigationController?.view.layer.add(transition, forKey:kCATransition)
    }
    
    fileprivate func animationWithOutNavigationController(_ viewControllerFromPresent: UIViewController, caAnimationType: CATransitionType, cfDuration: CFTimeInterval) {
        
        let transition: CATransition = CATransition()
        transition.duration = cfDuration
        transition.type = caAnimationType
        viewControllerFromPresent.view.window?.layer.add(transition, forKey: "CATransitionDismissType")
        
    }
    
}
