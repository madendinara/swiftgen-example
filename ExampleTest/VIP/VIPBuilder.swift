//
//  VIPBuilder.swift
//  ExampleTest
//
//  Created by Alfa on 1/14/20.
//  Copyright © 2020 Alfa. All rights reserved.
//

import UIKit

final class VIPBuilder {
    func build(set state: VIPViewController.VIPViewControllerState) -> UIViewController {
        let presenter: VIPPresenterProtocol = VIPPresenter()
        let interactor: VIPInteractorProtocol = VIPInteractor(presenter: presenter)
        let viewController = VIPViewController(interactor: interactor, state: state)
        presenter.viewController = viewController
        return viewController
    }
}
