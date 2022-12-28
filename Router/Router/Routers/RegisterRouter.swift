//  RegisterRouter.swift
//  Router
//  Created by angelina on 28.12.2022.

import Foundation

/// Роутер экрана регистрации
final class RegisterRouter: BaseRouter {
    // MARK: - Public methods
    func toColor() {
        perform(segue: "toColor")
    }
    func toBack() {
        perform(segue: "toBack")
    }
}
