//
//  ViewController.swift
//  prototype
//
//  Created by Geri Borbás on 09/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        view.backgroundColor = .lightGray
        view.addGestureRecognizer(tap)
    }
    
    @objc func tap() {
        present(PopoverViewController(), animated: true)
    }
}

class PopoverViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
}
