//
//  MainRouter.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/08/21.
//

import UIKit

typealias EntryPoint = UIViewController & MainViewProtocol

protocol MainRouterProtocol {
    var view: EntryPoint? { get set}
    static func start() -> MainRouterProtocol
}

class MainRouter: MainRouterProtocol {

    var view: EntryPoint?
    
    static func start() -> MainRouterProtocol {
        let router = MainRouter()
        
        let view = MainViewController()
        router.view = view
        
        return router
    }
}
