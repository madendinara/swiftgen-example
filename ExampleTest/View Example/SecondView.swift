//
//  SecondView.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit
import SnapKit

protocol SecondViewDelegate: class {
    func secondView(_ view: SecondView, didTappedButton button: UIButton)
    func secondView(_ view: SecondView, didTappedView gesture: UIGestureRecognizer)
}

class SecondView: UIView {
    
    weak var delegate: SecondViewDelegate?
  
    init(delegate: SecondViewDelegate?) {
        self.delegate = delegate
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("Button", for: .normal)
        btn.setTitleColor(.blue, for: .highlighted)
        btn.addTarget(self, action: #selector(printSomething(_:)), for: .touchUpInside)
        return btn
    }()
    
    func configureView(){
        backgroundColor = .yellow
        addSubview(button)
        let gesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(printSomethingView(_:)) )
        self.addGestureRecognizer(gesture)
        makeConstraint()
    }
    
    @objc func printSomething(_ sender: UIButton){
        delegate?.secondView(self, didTappedButton: sender)
    }
    
    @objc func printSomethingView(_ sender: UITapGestureRecognizer){
        delegate?.secondView(self, didTappedView: sender)
    }
    
    
    func makeConstraint(){
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
    }
}
