//
//  ComponentKitViewController.swift
//  prototype
//
//  Created by Geri Borbás on 09/10/2023.
//

import UIKit
import SHPComponentKit

class ComponentKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        view.addGestureRecognizer(tap)
        view.backgroundColor = .darkGray
    }
    
    @objc func tap() {
        
        let popover = OrangeViewController()
        present(OrangeViewController(), animated: true)
        
        popover.response.onMainValue {
            print("popover.response.onMainValue: \($0)")
        }
    }
}



class OrangeViewController: UIViewController {
        
    let response = Response<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        view.addGestureRecognizer(tap)
        view.backgroundColor = .orange
    }
    
    @objc func tap() {
        async {
            print("PopoverViewController.tap()")
            response.returnValue("returnValue") // 1140
        }
    }
    
    deinit {
//        response.cancel() // 10
    }
}
