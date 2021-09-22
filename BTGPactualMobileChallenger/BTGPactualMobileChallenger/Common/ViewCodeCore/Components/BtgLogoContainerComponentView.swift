//
//  BtgLogoContainerComponent.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/09/21.
//

import UIKit
import Shimmer

final class BtgLogoContainerComponentView: UIView {
    
    lazy var stackViewContainer : UIStackView = {
        let view = UIStackView(frame: .zero)
        view.alignment = .center
        view.axis = .vertical
        view.distribution = .fill
        return view
    }()
    
    lazy var shimmerContainer: FBShimmeringView = {
        let view = FBShimmeringView()
        view.shimmeringSpeed = CGFloat(1000)
        return view
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "btg-logo")
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
        stackViewContainer.addArrangedSubview(shimmerContainer)
        shimmerContainer.contentView = image
    }
    
    func setupConstraint() {
        
        stackViewContainer.snp.makeConstraints{make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    func setupAdditionalConfiguration() {
        shimmerContainer.isShimmering = true
    }
}
