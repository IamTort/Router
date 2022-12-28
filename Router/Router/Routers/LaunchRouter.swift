//  LaunchRouter.swift
//  Router
//  Created by angelina on 27.12.2022.

import Foundation

/// Роутер экрана входа
final class LaunchRouter: BaseRouter {
    // MARK: - Public methods
    func toLogin() {
        perform(segue: "toLogin")
    }
    func toRegister() {
        perform(segue: "toRegister")
    }
}
