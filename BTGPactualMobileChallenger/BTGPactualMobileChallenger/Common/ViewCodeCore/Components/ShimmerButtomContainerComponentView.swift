//
//  ShimmerContainerComponentView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 21/09/21.
//

import UIKit
import Shimmer

final class ShimmerButtomContainerComponentView: UIView {

    lazy var stackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 5
        return view
    }()
    
    lazy var shimmerLeftContainer: FBShimmeringView = {
        let view = FBShimmeringView()
        view.shimmeringSpeed = CGFloat(1000)
        return view
    }()
    
    lazy var shimmerRightContainer: FBShimmeringView = {
        let view = FBShimmeringView()
        view.shimmeringSpeed = CGFloat(1000)
        return view
    }()
    
    lazy var squareLeftView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(hexaRGB: "#001e61")
        return view
    }()
    
    lazy var squareRightView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(hexaRGB: "#001e61")
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


extension ShimmerButtomContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(shimmerLeftContainer)
        stackView.addArrangedSubview(shimmerRightContainer)
        shimmerLeftContainer.contentView = squareLeftView
        shimmerRightContainer.contentView = squareRightView
    }
    
    func setupConstraint() {
        stackView.snp.makeConstraints{make in
            make.width.equalToSuperview()
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        shimmerLeftContainer.isShimmering = true
        shimmerRightContainer.isShimmering = true
    }
}
