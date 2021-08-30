//
//  SectionOutput.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 27/08/21.
//

import Foundation
import UIKit

public protocol SectionOutput: AnyObject {
    func endRefresh(error: String?)
    func reloadInSection(section: Section, animation: UITableView.RowAnimation)
    func setSelectedCell(from index: Int, in section: Section, animated: Bool, scrollPosition: UITableView.ScrollPosition)
    func removeItem(from index: Int, in section: Section, animation: UITableView.RowAnimation, completion: (() -> Void)? )
}
