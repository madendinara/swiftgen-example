//
//  ThirdViewController.swift
//  ExampleTest
//
//  Created by Alfa on 1/10/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(TableViewCell.self, forCellReuseIdentifier: "\(TableViewCell.self)")
        table.delegate = self
        table.dataSource = self
        return table
    }()
    func configureViews(){
        view.addSubview(tableView)
        makeConstraint()
        
        
    }
    override func loadView() {
        super.loadView()
        configureViews()
        
    }
    
    func makeConstraint(){
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
    }
    
}
extension ThirdViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableViewCell.self)", for: indexPath) as! TableViewCell
        cell.label.text = "After realizing the problem, the first thing that you can do is outsourcing the data transforming or binding part to a sepearate class. This is how the smart people at Miscrosoft invented the Model-View-ViewModel architecture pattern. Now you're one step closer, your data models and the views can have their on a whole new level inside shiny new files far-far away from controller land. However this pattern will not clean up all the leftovers inside the view controller. Remember that you still have to feed the view controller with data, handle all the different states."
        return cell
    }
    
    
    
     
}
extension ThirdViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? TableViewCell else {
            return
        }
        
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = .red
        }
        else {
            cell.contentView.backgroundColor = .clear
        }
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
