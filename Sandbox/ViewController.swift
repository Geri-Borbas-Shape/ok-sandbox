//
//  ViewController.swift
//  Sandbox
//
//  Created by Geri Borbás on 17/10/2023.
//

import UIKit

class ViewController: UIViewController {

    // Original issue https://shape.slack.com/archives/C05L0UZUDCM/p1696581067760889
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        let longTap = UILongPressGestureRecognizer(target: self, action: #selector(self.longTap))
        longTap.minimumPressDuration = 1
        longTap.canPrevent(tap)
        view.addGestureRecognizer(tap)
        view.addGestureRecognizer(longTap)
        view.backgroundColor = .black
    }
    
    // Tap opens ComponentKit view (Orange).
    @objc func tap() {
        present(ComponentKitViewController(), animated: true)
    }
    
    // Long tap opens Combine view (Blue).
    @objc func longTap() {
        present(CombineViewController(), animated: true)
    }
}
