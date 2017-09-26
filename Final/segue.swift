//
//  segue.swift
//  Final
//
//  Created by Zholdas on 01.05.17.
//  Copyright © 2017 Zholdas. All rights reserved.
//

import UIKit

class segue: UIStoryboardSegue {
    override func perform() {
        scale()
    }
    
    func scale(){
        let fromVC = self.source
        let toVC = self.destination
        toVC.view.transform = CGAffineTransform(scaleX: 0, y: 0)
        toVC.view.center = fromVC.view.center
        let containerView = fromVC.view.superview
        containerView?.addSubview(toVC.view)
        UIView.animate(withDuration: 0.7, delay: 0.5, options: [], animations: {
            toVC.view.transform = CGAffineTransform.identity
        }) { (success) in
            fromVC.present(toVC, animated: false, completion: nil)
        }
    }
    
}
