//
//  SolidDelegate.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

class SolidDelegate: NSObject, UITableViewDelegate {
    
    let sections: [Section]
    
    init(sections: [Section]) {
        self.sections = sections
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? SolidTableViewCell else {
            return
        }
        cell.configure(with: sections[indexPath.section].rows[indexPath.row])
    }
}
