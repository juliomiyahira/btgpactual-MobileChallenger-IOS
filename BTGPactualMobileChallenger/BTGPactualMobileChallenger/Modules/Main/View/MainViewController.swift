//
//  MainViewController.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/08/21.
//

import UIKit

protocol MainViewProtocol {
    var presenter: MainPresenterProtocol? { get set }
    func update(with currency: Currency)
    func update(with error: String)
    func showLoading()
    func stopLoading()
}

class MainViewController: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
    
    lazy var screen: MainViewControllerScreen = {
        let view = MainViewControllerScreen()
        view.delegate = self
        return view
    }()
    
    override func loadView() {
        self.view = screen
    }
    
    private func getScreen() -> MainViewControllerScreen? {
        return self.view as? MainViewControllerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.getCurrencies()
    }
    
    func update(with error: String) {
        print(error)
        stopLoading()
    }
    
    func update(with currency: Currency) {
        print(currency)
        stopLoading()
    }
}

extension MainViewController: MainViewControllerScrennDelegate {
    
    func showLoading() {
        self.getScreen()?.showLoading()
    }
    
    func stopLoading() {
        self.getScreen()?.hideLoading()
    }

    func buttonOneTap() {
//        self.getScreen()?.startButtonShimmer()
//        debugPrint("button one callled")
    }
    
    func buttonTwoTap() {
//        self.getScreen()?.stopButtonShimmer()
//        debugPrint("button two callled")
    }
}
