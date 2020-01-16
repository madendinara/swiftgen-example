//
//  VIPPresenter.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

protocol VIPPresenterProtocol: class {
    var viewController: VIPViewControllerProtocol? { get set }
    func presentAcccount(acccount: [String])
}

class VIPPresenter: VIPPresenterProtocol {
    
    var viewController: VIPViewControllerProtocol?
    
    func presentAcccount(acccount: [String]) {
        viewController?.presentAccts(accounts: acccount)
    }
}
