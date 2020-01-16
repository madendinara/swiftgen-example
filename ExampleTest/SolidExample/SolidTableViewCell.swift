//
//  SolidTableViewCell.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class SolidTableViewCell: UITableViewCell {
    private lazy var titleLabel = UILabel()
    
    private lazy var descLabel = UILabel()
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with model: SolidViewModelProtocol) {
        titleLabel.attributedText = model.viewModelTitle
        descLabel.attributedText = model.viewModelDesc
    }
}

private extension SolidTableViewCell {
    func configureViews() {
        selectionStyle = .none
        contentView.backgroundColor = ColorName.uiPrimary.color
        [titleLabel, descLabel].forEach { contentView.addSubview($0)}
        makeConstraints()
    }
    
    func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
        }
        descLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
