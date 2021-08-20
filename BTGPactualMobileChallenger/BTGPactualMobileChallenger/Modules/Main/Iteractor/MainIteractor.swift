//
//  MainIteractor.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation

protocol MainIteractorProtocol {
    var presenter: MainPresenter? { get set }
    func getCurrencies()
}

class MainIteractor: MainIteractorProtocol {
    
    var presenter: MainPresenter?
   
    func getCurrencies() {
        APIService.getCurrenciesAvaliable { result in
            switch result {
                case .success(let currency):
                    self.presenter?.successGetcurrencies(currency: currency)
                case .failure(let error):
                    self.presenter?.errorGetcurrencies(error: error)
            }
        }
    }
}
