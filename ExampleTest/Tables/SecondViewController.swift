//
//  SecondViewController.swift
//  ExampleTest
//
//  Created by Alfa on 1/8/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    // MARK: - sections and rows

    enum Section {
        case hi
        case key
    }
    enum Row {
        case hello
        case world
    }
    enum Header {
        case tenge
        case dollar
    }
    
    var sections: [Section] = [.hi, .key]
    var rows: [[Row]] = [[.hello, .world], [.hello, .world, .hello]]
    var headers : [Header] = [.tenge, .dollar]
    
    lazy var testView: UIView = {
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 10))
        v.backgroundColor = .lightGray
        
        return v
    }()
    
    lazy var testView2: UIView = {
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 10))
        v.backgroundColor = .lightGray

        return v
    }()
    
    lazy var tableView: UITableView = {
        let tableV = UITableView()
        tableV.tableHeaderView = testView
        tableV.tableFooterView = testView2
        tableV.dataSource = self
        tableV.delegate = self
        
        [TableViewCell.self, SecondTableViewCell.self].forEach{
            tableV.register($0, forCellReuseIdentifier: "\($0!)")
        }
        
        [HeaderView.self, FooterView.self, SecondHeaderView.self].forEach{
            tableV.register($0, forHeaderFooterViewReuseIdentifier: "\($0!)")
        }

        return tableV
    }()
    
    override func loadView() {
        super.loadView()
        configure()
    }
    
    func configure(){
        view.addSubview(tableView)
        configureConstraints()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func configureConstraints(){
        tableView.snp.makeConstraints{ make in
            make.edges.equalTo(view.safeAreaInsets)
        }
    }

}

extension SecondViewController: UITableViewDataSource {
    // MARK: - tableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows[section].count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch headers[section] {
        case .tenge:
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(HeaderView.self)")
            return headerView
        
        case .dollar :
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(SecondHeaderView.self)")
            return headerView
        }
    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(FooterView.self)")
//        return footerView
//        
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch sections[indexPath.section] {
        case .hi:
            switch rows[indexPath.section][indexPath.row]{
            case .hello:
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableViewCell.self)", for: indexPath)
                return cell
            case .world:
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(SecondTableViewCell.self)", for: indexPath)
                return cell
            }
            
        case .key:
            switch rows[indexPath.section][indexPath.row]{
            case .hello:
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableViewCell.self)", for: indexPath)
                return cell
            case .world:
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(SecondTableViewCell.self)", for: indexPath)
                return cell
            }
        }
        
        
    }
    
}

extension SecondViewController: UITableViewDelegate {
    // MARK: - tableViewDelegate
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70
    }
    
}
