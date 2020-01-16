//
//  NetworkManager.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import Foundation

protocol NetworkManagerProtocol: class {
    func getAccountList(completion: @escaping ([String]) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
    func getAccountList(completion: @escaping ([String]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
            completion(["123", "asdf"])
        })
    }
}
