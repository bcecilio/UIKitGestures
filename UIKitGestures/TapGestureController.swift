//
//  TapGestureController.swift
//  UIKitGestures
//
//  Created by Brendon Cecilio on 2/3/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class TapGestureController: UIViewController {
    
    @IBOutlet weak var pencilImageView: UIImageView!
    
    private lazy var tabGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
//        gesture.numberOfTapsRequired = 1
//        gesture.numberOfTouchesRequired = 1
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        pencilImageView.addGestureRecognizer(tabGesture)
        pencilImageView.isUserInteractionEnabled = true
    }
    
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        pencilImageView.image = UIImage(systemName: "pencil.circle.fill")
    }
}
