//
//  MainViewControllerScreen.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 31/08/21.
//

import Foundation
import UIKit

protocol MainViewControllerScrennDelegate {
    func buttonOneTap()
    func buttonTwoTap()
}

class MainViewControllerScreen: UIView {
    
    var delegate: MainViewControllerScrennDelegate?
    
    lazy var stackViewContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.backgroundColor = .yellow
        view.alignment = .center
        view.spacing = 8
        return view
    }()
    
    lazy var logoContainer: BtgLogoContainerComponentView = {
        let view = BtgLogoContainerComponentView()
        return view
    }()
    
    lazy var originContainer: OrigimContainerComponentView = {
        let view = OrigimContainerComponentView()
        return view
    }()
    
    lazy var targetContainer : TargetContainerComponentView = {
        let view = TargetContainerComponentView()
        return view
    }()
    
    lazy var buttonContainer : ButtomContainerComponentView = {
        var view = ButtomContainerComponentView()
        view.delegate = self
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainViewControllerScreen: CodeView{
  
    func buildViewHierarchy() {
        addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(logoContainer)
        stackViewContainer.addArrangedSubview(originContainer)
        stackViewContainer.addArrangedSubview(targetContainer)
        stackViewContainer.addArrangedSubview(buttonContainer)
    }
    
    func setupConstraint() {
        
        stackViewContainer.snp.makeConstraints{make in
            make.top.equalToSuperview().offset(100)
            make.bottom.equalToSuperview().inset(50)
            make.left.right.equalToSuperview()
        }
        
        logoContainer.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        originContainer.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        targetContainer.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        buttonContainer.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        buttonContainer.selectedButtonOne.setTitle("Origem", for: .normal)
        buttonContainer.selectedButtonTwo.setTitle("Destino", for: .normal)
        targetContainer.label.text = "R$ 10,00"
        
    }
}

extension MainViewControllerScreen: ButtomContainerComponentDelegate {
    
    func buttonOneTap() {
        self.delegate?.buttonOneTap()
    }
    
    func buttonTwoTap() {
        self.delegate?.buttonTwoTap()
    }
}
