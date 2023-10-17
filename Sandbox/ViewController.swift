//
//  ViewController.swift
//  Sandbox
//
//  Created by Geri Borbás on 17/10/2023.
//

import UIKit

class ViewController: UIViewController {

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
    
    @objc func tap() {
        present(ComponentKitViewController(), animated: true)
    }
    
    @objc func longTap() {
        present(CombineViewController(), animated: true)
    }
}
