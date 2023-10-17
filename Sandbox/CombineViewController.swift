//
//  CombineViewController.swift
//  Sandbox
//
//  Created by Geri Borbás on 09/10/2023.
//

import UIKit
import Combine

class CombineViewController: UIViewController {

    var subscribers = [AnyCancellable]() // Called "Cancellable" for a reason
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        view.addGestureRecognizer(tap)
        view.backgroundColor = .lightGray
    }
    
    @objc func tap() {
        let popover = BlueViewController()
        present(BlueViewController(), animated: true)
        popover.subject
            .sink {
                print("popover.response.sink: \($0)")
            }
            // Combine forces you to be explicit about lifecycle.
            .store(in: &subscribers)
    }
}

class BlueViewController: UIViewController {
        
    let subject = PassthroughSubject<String, Never>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        view.addGestureRecognizer(tap)
        view.backgroundColor = .blue
    }
    
    @objc func tap() {
        subject.send("returnValue")
    }
}
