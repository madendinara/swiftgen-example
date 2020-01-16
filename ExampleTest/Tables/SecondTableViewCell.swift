//
//  SecondTableViewCell.swift
//  ExampleTest
//
//  Created by Alfa on 1/8/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    lazy var label: UILabel = {
        let l = UILabel()
        l.text = "World"
        return l
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView(){
        contentView.addSubview(label)
        
        makeConstraint()
        
    }
    func makeConstraint(){
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(30)
            make.bottom.equalToSuperview().inset(30)
        }
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
