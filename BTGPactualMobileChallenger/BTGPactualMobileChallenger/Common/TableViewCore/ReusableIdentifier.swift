//
//  ReusableIdentifier.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 27/08/21.
//

import UIKit

protocol ReusableView: Any {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionReusableView: ReusableView {}
extension UITableViewCell: ReusableView {}
extension UITableViewHeaderFooterView: ReusableView {}
