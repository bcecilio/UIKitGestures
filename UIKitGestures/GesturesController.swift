//
//  GesturesController.swift
//  UIKitGestures
//
//  Created by Brendon Cecilio on 2/3/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class GesturesController: UITabBarController {
    
    private lazy var tagGestureVC: TapGestureController = {
       let storyBoard = UIStoryboard(name: "TapGesture", bundle: nil)
        guard let VC = storyBoard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError("poo")
        }
        return VC
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [tagGestureVC, SwipeGesutreController()]
    }
}
