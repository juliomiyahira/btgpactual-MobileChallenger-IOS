//
//  BtgLogoContainerComponent.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/09/21.
//

import UIKit

final class BtgLogoContainerComponentView: UIView {
    
    lazy var stackViewContainer : UIStackView = {
        let view = UIStackView(frame: .zero)
        view.alignment = .center
        view.axis = .vertical
        view.distribution = .fill
        return view
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView(frame: .zero)
        return image
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BtgLogoContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(image)
    }
    
    func setupConstraint() {
        
        stackViewContainer.snp.makeConstraints{make in
            make.width.equalToSuperview()
        }
        
        image.snp.makeConstraints{make in
            make.width.equalTo(320)
            make.height.equalTo(100)
        }
    }
    
    func setupAdditionalConfiguration() {
        image.image = UIImage(named: "btg-logo")
    }
}
