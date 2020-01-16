//
//  Section.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

struct Section {
    enum Section {
        case solid
    }
    enum Row {
        case row
    }
    
    let section: Section
    let rows: [SolidViewModel]
}
