//
//  SectionInput.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 27/08/21.
//

import Foundation
import UIKit

@objc protocol SectionInput: Any {}

@objc protocol SectionStateInput: SectionInput {
    @objc optional func viewDidLoad()
    @objc optional func viewWillAppear()
    @objc optional func viewWillDisappear()
}

@objc protocol TableSectionCellInput: SectionInput {
    @objc func cell(for indexPath: IndexPath) -> UITableViewCell.Type
    @objc func willDisplayCell(_ cell: UITableViewCell, at indexPath: IndexPath)
    @objc func didSelectCell(_ cell: UITableViewCell, at indexPath: IndexPath)
    @objc optional func heightForRowInSection(indexPath: IndexPath) -> CGFloat
}

@objc protocol TableSectionHeaderInput: SectionInput {
    @objc func header() -> UITableViewHeaderFooterView.Type
    @objc func shouldDisplayHeader() -> Bool
    @objc optional func didSelectHeader(_ headerView: UIView)
    @objc optional func willDisplayHeader(_ headerView: UIView)
    @objc optional func viewForHeaderInSection(tableView: UITableView) -> UIView?
    @objc optional func heightForHeaderInSection() -> CGFloat
}
