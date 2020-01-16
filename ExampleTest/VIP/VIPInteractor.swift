//
//  VIPInteractor.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import Foundation

protocol VIPInteractorProtocol: class {
    func getAccountList()
}

class VIPInteractor: VIPInteractorProtocol {
    let networkManager: NetworkManagerProtocol = NetworkManager()
    let presenter: VIPPresenterProtocol
    
    func getAccountList() {
        networkManager.getAccountList { accounts in
            self.presenter.presentAcccount(acccount: accounts)
        }
    }
    
    init(presenter: VIPPresenterProtocol) {
        self.presenter = presenter
    }
}
