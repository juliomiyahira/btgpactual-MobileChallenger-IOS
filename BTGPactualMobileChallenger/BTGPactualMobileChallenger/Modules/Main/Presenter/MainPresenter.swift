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
        self.view?.showLoading()
        self.iteractor?.getCurrencies()
    }
    
    func successGetcurrencies(currency: Currency) {
        DispatchQueue.main.async {
            self.view?.stopLoading()
            self.view?.update(with: currency)
        }
    }
    
    func errorGetcurrencies(error: Error) {
        DispatchQueue.main.async {
            self.view?.stopLoading()
            self.view?.update(with: error.localizedDescription)
        }
    }
    
    deinit {
        self.router = nil
        self.iteractor = nil
        self.view = nil
    }
}
