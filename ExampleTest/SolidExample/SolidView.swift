//
//  SolidView.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class TableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

private extension TableView {
    func configure() {
        backgroundColor = .red
        tableFooterView = UIView()
        register(SolidTableViewCell.self, forCellReuseIdentifier: "\(SolidTableViewCell.self)")
    }
}
