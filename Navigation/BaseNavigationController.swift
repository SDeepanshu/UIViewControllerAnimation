//
//  BaseNavigationController.swift
//  Zentap
//
//  Created by Rahul Sharma on 15/03/20.
//  Copyright © 2020 rahulSharma. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
//
//    init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
    override func awakeFromNib() {
       super.awakeFromNib()
        delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
//    init() {
//        delegate = self
//    }
    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
}

extension BaseNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        switch operation {
        case .push:
            return FadePushAnimator()
        case .pop:
            return FadePopAnimator()
        default:
            return nil
        }
    }
}
