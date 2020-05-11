//
//  secondViewController.swift
//  presentingViewController
//
//  Created by Rahul Sharma on 06/02/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func next(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        // dismissVC(viewControllerFromPresent: self, animationType: .fade, duration: 1, animated: false)
    }
    
}
