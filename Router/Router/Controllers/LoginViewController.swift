//  ViewController.swift
//  Router
//  Created by angelina on 27.12.2022.

import UIKit
/// Экран входа
final class LoginViewController: UIViewController {
    
    // MARK: - Constants
    private enum Constants {
        static let loginString = "admin"
        static let passwordString = "123456"
        static let userDefaultsKeyString = "isLogin"
    }
    
    // MARK: - Private IBOutlet
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    // MARK: - Public properties
    var router: LaunchRouter?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        router = LaunchRouter(controller: self)
        setupController()
    }
    
    // MARK: - Private method
    
    private func setupController()  {
        if UserDefaults.standard.bool(forKey: Constants.userDefaultsKeyString) {
            router?.toLogin()
        } else {
            router?.toRegister()
        }
    }
    
    // MARK: - Private IBAction
    @IBAction private func loginAction(_ sender: Any) {
        guard
            let login = loginTextField.text,
            let password = passwordTextField.text,
            login == Constants.loginString && password == Constants.passwordString else { return }
        UserDefaults.standard.set(true, forKey: Constants.userDefaultsKeyString)
        router?.toLogin()
    }
    
    @IBAction private func registerAction(_ sender: Any) {
        router?.toRegister()
    }
}
