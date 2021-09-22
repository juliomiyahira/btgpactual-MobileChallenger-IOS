//
//  ButtonWithShimmerContainerComponent.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 21/09/21.
//

import UIKit

final class ButtonWithShimmerContainerComponent: UIView {
    
    lazy var stackViewContainer: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillEqually
        view.alignment = .fill
        return view
    }()
    
    lazy var shimmerContainer: ShimmerButtomContainerComponentView = {
        var view = ShimmerButtomContainerComponentView()
        return view
        
    }()
    
    lazy var buttonContainer: ButtomContainerComponentView = {
        var view = ButtomContainerComponentView()
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ButtonWithShimmerContainerComponent: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(buttonContainer)
        stackViewContainer.addArrangedSubview(shimmerContainer)
    }
    
    func setupConstraint() {
        stackViewContainer.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
       hideLoading()
    }
}

extension ButtonWithShimmerContainerComponent {
    
    func hideLoading() {
        self.shimmerContainer.isHidden = true
        self.buttonContainer.isHidden = false
    }
    
    func showLoading() {
        self.shimmerContainer.isHidden = false
        self.buttonContainer.isHidden = true
    }
}
