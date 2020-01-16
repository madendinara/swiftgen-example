//
//  View.swift
//  ExampleTest
//
//  Created by Alfa on 1/10/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit
import SnapKit

protocol ThirdViewDelegate: SecondViewDelegate {
    
}

class View: UIView {
    
    weak var delegate: ThirdViewDelegate? {
        //MARK: - Observer
        didSet {
            secondView.delegate = delegate
        }
    }

    init(delegate: ThirdViewDelegate?) {
        self.delegate = delegate
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var secondView: SecondView = {
        var v = SecondView(delegate: delegate)
        return v
    }()
       
    
    func configureView(){
        backgroundColor = .green
        addSubview(secondView)
        makeConstraint()
    }
    
    func makeConstraint(){
        secondView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 200, height: 200))
        }
    }

}
