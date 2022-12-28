//  ViewController.swift
//  Router
//  Created by angelina on 27.12.2022.

import UIKit
/// Экран входа
final class LoginViewController: UIViewController {
    
    // MARK: - Constants
    private enum Constants {
        static let login = "admin"
        static let password = "123456"
        static let userDefaultsKeyString = "isLogin"
    }
    
    // MARK: - Private IBOutlet
    @IBOutlet private weak var loginView: UITextField!
    @IBOutlet private weak var passwordView: UITextField!
    
    // MARK: - Public properties
    var router: LaunchRouter?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        router = LaunchRouter(controller: self)
        if UserDefaults.standard.bool(forKey: Constants.userDefaultsKeyString) {
            router?.toLogin()
        } else {
            router?.toRegister()
        }
    }
    
    // MARK: - Private IBAction
    @IBAction private func loginAction(_ sender: Any) {
        guard
            let login = loginView.text,
            let password = passwordView.text,
            login == Constants.login && password == Constants.password else { return }
        UserDefaults.standard.set(true, forKey: Constants.userDefaultsKeyString)
        router?.toLogin()
    }
    @IBAction private func registerAction(_ sender: Any) {
        router?.toRegister()
    }
}

