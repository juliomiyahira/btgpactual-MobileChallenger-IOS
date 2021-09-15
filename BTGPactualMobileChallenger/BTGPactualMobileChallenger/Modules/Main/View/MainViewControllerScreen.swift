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
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        return view
    }()
    
    lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        return view
    }()
    
    lazy var logoContainer: BtgLogoContainerComponentView = {
        let view = BtgLogoContainerComponentView()
        return view
    }()
    
    lazy var targetContainer : TargetContainerComponentView = {
        let view = TargetContainerComponentView()
        return view
    }()
    
    lazy var originContainer: OrigimContainerComponentView = {
        let view = OrigimContainerComponentView()
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
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(logoContainer)
        contentView.addSubview(targetContainer)
        contentView.addSubview(originContainer)
        contentView.addSubview(buttonContainer)
    }
    
    func setupConstraint() {
        
        logoContainer.snp.makeConstraints{ make in
            make.top.equalToSuperview().inset(100)
            make.width.equalTo(contentView.snp.width)
        }

        targetContainer.snp.makeConstraints{ make in
            make.top.equalTo(logoContainer).offset(100)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
        }
        
        originContainer.snp.makeConstraints{ make in
            make.top.equalTo(targetContainer.snp.bottom).offset(150)
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }

        buttonContainer.snp.makeConstraints{ make in
            make.bottom.equalToSuperview().inset(70)
            make.height.equalTo(100)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
        }
        
        contentView.snp.makeConstraints{make in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(self)
            make.width.equalTo(scrollView)
            make.height.equalTo(scrollView)
        }

        scrollView.snp.makeConstraints{make in
            make.edges.equalTo(self)
        }
    }
    
    func setupAdditionalConfiguration() {
        super.backgroundColor = .white
        buttonContainer.selectedButtonOne.setTitle("Origem", for: .normal)
        buttonContainer.selectedButtonTwo.setTitle("Destino", for: .normal)
        targetContainer.currencyLabel.text = "U$"
        targetContainer.convertValueLabel.text = "10,00"
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
