//
//  SolidDataSource.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class SolidDataSource: NSObject {
    
    let sections: [Section]
    
    init(sections: [Section]) {
        self.sections = sections
    }
}

extension SolidDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(SolidTableViewCell.self)", for: indexPath) as! SolidTableViewCell
        return cell
    }
}
