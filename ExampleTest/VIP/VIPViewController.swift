//
//  VIPViewController.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

protocol VIPViewControllerProtocol: class {
    func presentAccts(accounts: [String])
}

class VIPViewController: UIViewController, VIPViewControllerProtocol {
    
    enum VIPViewControllerState {
        case initial
        case loading
        case displayAccounts(accounts: [String])
    }
    
    var state: VIPViewControllerState {
        didSet {
            updateState()
        }
    }
    
    let interactor: VIPInteractorProtocol
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .orange
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        state = .loading
    }
    
    init(interactor: VIPInteractorProtocol, state: VIPViewControllerState) {
        self.interactor = interactor
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func presentAccts(accounts: [String]) {
        state = .displayAccounts(accounts: accounts)
    }
    
    func updateState() {
        switch state {
        case .initial: break
        case .loading:
            interactor.getAccountList()
        case .displayAccounts(let accounts):
            print(accounts)
        }
    }
}
