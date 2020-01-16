//
//  SolidViewController.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class SolidViewController: UIViewController {
//    let firstImage: UIImage = UIImage(cgImage: Asset.data1 as! CGImage)
    
    lazy var sections: [Section] = [
        Section(section: .solid, rows: [
            SolidViewModel(model: SolidModel(title: "asdf", description: "1")),
            SolidViewModel(model: SolidModel(title: "fff", description: "2")),
        ])
    ]
    
    lazy var dataSource = SolidDataSource(sections: sections)
    lazy var delegate = SolidDelegate(sections: sections)
    
    private lazy var mainView: TableView = {
        let view = TableView()
        view.dataSource = dataSource
        view.delegate = delegate
        return view
    }()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

