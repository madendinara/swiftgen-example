//
//  FourthViewController.swift
//  ExampleTest
//
//  Created by Alfa on 1/10/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    lazy var mainView: View = {
        let v = View(delegate: self)
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    

}
extension FourthViewController: ThirdViewDelegate {
    func secondView(_ view: SecondView, didTappedView gesture: UIGestureRecognizer) {
        print("View tapped")
    }
    func secondView(_ view: SecondView, didTappedButton button: UIButton) {
        print("asdf")
    }
}

