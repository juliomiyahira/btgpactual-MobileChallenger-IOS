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
    func successGetcurrencies(currency: Currency)
    func errorGetcurrencies(error: Error)
}

class MainPresenter: MainPresenterProtocol {
    
    var router: MainRouterProtocol?
    
    var iteractor: MainIteractorProtocol?
    
    var view: MainViewProtocol?

    func getCurrencies() {
        self.iteractor?.getCurrencies()
    }
    
    func successGetcurrencies(currency: Currency) {
        self.view?.update(with: currency)
    }
    
    func errorGetcurrencies(error: Error) {
        self.view?.update(with: error.localizedDescription)
    }
}
