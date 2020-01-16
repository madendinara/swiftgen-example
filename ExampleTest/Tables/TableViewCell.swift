//
//  TableViewCell.swift
//  ExampleTest
//
//  Created by Alfa on 1/8/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    lazy var label: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        return l
    }()
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            label.textColor = .green
        }
        else {
            label.textColor = .black
        }
        // Configure the view for the selected state
    }
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        if highlighted {
            contentView.backgroundColor = .darkGray
        }
        else {
            contentView.backgroundColor = .clear
        }
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
        
    }
    
    
    func configureViews(){
        selectionStyle = .none
        contentView.addSubview(label)
        configureConstraints()

    }
    func configureConstraints(){
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
