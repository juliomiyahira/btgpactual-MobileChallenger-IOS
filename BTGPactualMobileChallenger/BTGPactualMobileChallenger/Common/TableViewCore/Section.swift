//
//  Section.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 27/08/21.
//

import Foundation

public class Section: NSObject {
    public weak var output: SectionOutput?
    public var items: [Any] = []
    public var scene: SectionsScenes = .all
}

public enum SectionsScenes {
    case sceneLoading
    case sceneError
    case sceneSuccess
    case all
}
