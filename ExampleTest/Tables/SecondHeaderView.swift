//
//  FooterHeaderView.swift
//  ExampleTest
//
//  Created by Alfa on 1/9/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit
import SnapKit

class SecondHeaderView: UITableViewHeaderFooterView {
    lazy var label: UILabel = {
        let l = UILabel()
        l.text = "Dollar"
        return l
    }()
    
    func configureView(){
        contentView.addSubview(label)
        contentView.backgroundColor = .gray
        configureConstraints()

    }
    
    func configureConstraints(){
        label.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(16)
        }
    }
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
