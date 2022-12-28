//  RegisterRouter.swift
//  Router
//  Created by angelina on 28.12.2022.

import Foundation

/// Роутер экрана регистрации
final class RegisterRouter: BaseRouter {
    // MARK: - Constants
    private enum Constants {
        static let colorSceneString = "toColor"
        static let loginSceneString = "toBack"
    }
    
    // MARK: - Public methods
    func toColor() {
        perform(segue: Constants.colorSceneString)
    }
    func toBack() {
        perform(segue: Constants.loginSceneString)
    }
}
