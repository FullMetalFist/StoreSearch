//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Michael Vilabrera on 4/29/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    
    lazy var dimmingView = GradientView(frame: CGRect.zero)
    
    override var shouldRemovePresentersView: Bool {
        return false
    }
    
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        containerView!.insertSubview(dimmingView, at: 0)
    }
}
