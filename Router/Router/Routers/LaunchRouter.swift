//  LaunchRouter.swift
//  Router
//  Created by angelina on 27.12.2022.

import Foundation

/// Роутер экрана входа
final class LaunchRouter: BaseRouter {
    // MARK: - Constants
    private enum Constants {
        static let loginSceneString = "toLogin"
        static let registerSceneString = "toRegister"
    }
    
    // MARK: - Public methods
    func toLogin() {
        perform(segue: Constants.loginSceneString)
    }
    
    func toRegister() {
        perform(segue: Constants.registerSceneString)
    }
}
