//
//  ViewModel.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

protocol SolidViewModelProtocol {
    // MARK: - Changes
    var viewModelTitle: NSAttributedString { get }
    var viewModelDesc: NSAttributedString { get }
}

struct SolidViewModel: SolidViewModelProtocol {
    let model: SolidModel
    
    init(model: SolidModel) {
        self.model = model
    }
    
    var viewModelTitle: NSAttributedString {
        return NSAttributedString(string: model.title, attributes: [
            NSAttributedString.Key.font: FontFamily.SFProText.regular.font(size: 15)!,
            NSAttributedString.Key.foregroundColor: ColorName.uiPrimary.color
        ])
    }
    
    var viewModelDesc: NSAttributedString {
        return NSAttributedString(string: model.description, attributes: [
            NSAttributedString.Key.font: UIFont(name: "Arial", size: 13)!,
            NSAttributedString.Key.foregroundColor: UIColor.blue
        ])
    }
}
