//
//  MainPresenter.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation

protocol MainPresenterProtocol {
    var router: MainRouterProtocol? { get set }
    var iteractor: MainIteractorProtocol? { get set }
    var view: MainViewProtocol? { get set }
    func getCurrencies()
    func iteractorDidFetchCurrency(with result: Result<[Currency], Error>)
}

class MainPresenter: MainPresenterProtocol {
    
    var router: MainRouterProtocol?
    
    var iteractor: MainIteractorProtocol?
    
    var view: MainViewProtocol?

    func getCurrencies() {
        self.iteractor?.getCurrencies()
    }
    
    func iteractorDidFetchCurrency(with result: Result<[Currency], Error>) {
    }
}
