//
//  PushPopAnimation.swift
//  presentingViewController
//
//  Created by Rahul Sharma on 06/02/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit
/*
 class PresentAnimator: NSObject, UIViewControllerAnimatedTransitioning {
 
 func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
 return 0.25
 }
 
 
 func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
 
 guard let fromVC = transitionContext.viewController(forKey: .from),
 let toVC = transitionContext.viewController(forKey: .to) else {
 return
 }
 
 let containerView = transitionContext.containerView
 containerView.addSubview(toVC.view)
 
 toVC.view.alpha = 0
 
 let duration = transitionDuration(using: transitionContext)
 UIView.animate(withDuration: duration, animations: {
 toVC.view.alpha = 1
 }) { (finished) in
 transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
 }
 }
 }
 
 class DismissAnimator: NSObject, UIViewControllerAnimatedTransitioning {
 
 func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
 return 0.25
 }
 
 
 func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
 
 guard let fromVC = transitionContext.viewController(forKey: .from),
 let toVC = transitionContext.viewController(forKey: .to) else {
 return
 }
 
 let duration = transitionDuration(using: transitionContext)
 UIView.animate(withDuration: duration, animations: {
 fromVC.view.alpha = 0
 }) { (finished) in
 transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
 }
 }
 }
 */

open class FadePushAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    open func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    open func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard
            let toViewController = transitionContext.viewController(forKey: .to)
            else {
                return
        }
        transitionContext.containerView.addSubview(toViewController.view)
        toViewController.view.alpha = 0
        
        let duration = self.transitionDuration(using: transitionContext)
        UIView.animate(withDuration: duration, animations: {
            toViewController.view.alpha = 1
        }, completion: { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
}

open class FadePopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    open func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    open  func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard
            let fromViewController = transitionContext.viewController(forKey: .from),
            let toViewController = transitionContext.viewController(forKey: .to)
            else {
                return
        }
        
        transitionContext.containerView.insertSubview(toViewController.view, belowSubview: fromViewController.view)
        
        let duration = self.transitionDuration(using: transitionContext)
        UIView.animate(withDuration: duration, animations: {
            fromViewController.view.alpha = 0
        }, completion: { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
}
