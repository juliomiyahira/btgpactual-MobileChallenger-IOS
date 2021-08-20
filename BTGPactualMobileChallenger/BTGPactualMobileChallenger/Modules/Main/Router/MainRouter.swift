//
//  MainRouter.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/08/21.
//

import UIKit

typealias EntryPoint = UIViewController & MainViewProtocol

protocol MainRouterProtocol {
    var entry: EntryPoint? { get set}
    static func start() -> MainRouterProtocol
}

class MainRouter: MainRouterProtocol {

    var entry: EntryPoint?
    
    static func start() -> MainRouterProtocol {
    
        let router = MainRouter()
    
        // VIP
        let view = MainViewController()
        let presenter = MainPresenter()
        let iteractor = MainIteractor()
        
        
        view.presenter = presenter
        
        iteractor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.iteractor = iteractor
        
        router.entry = view
        
        return router
    }
}
