//
//  WhatsAppCircular.swift
//  ProgressKit
//
//  Created by Kauntey Suryawanshi on 30/06/15.
//  Copyright (c) 2015 Kauntey Suryawanshi. All rights reserved.
//

import Foundation
import Cocoa

class InDeterminateViewController: NSViewController {

    override func viewDidAppear() {
        for view in self.view.subviews {
            (view as? RotatingArc)?.animate = true
            (view as? Spinner)?.animate = true

            if view is IndeterminateAnimation {
                (view as! IndeterminateAnimation).animate = true
            }
        }
    }

    override func viewWillDisappear() {
        for view in self.view.subviews {
            (view as? RotatingArc)?.animate = false
            (view as? Spinner)?.animate = false

            if view is IndeterminateAnimation {
                (view as! IndeterminateAnimation).animate = false
            }
        }
    }
}
