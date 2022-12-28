//  RegisterViewController.swift
//  Router
//  Created by angelina on 27.12.2022.

import UIKit

/// Экран регистрации
final class RegisterViewController: UIViewController {

    // MARK: - Constants
    private enum Constants {
        static let userDefaultsKeyString = "isLogin"
    }
    
    // MARK: - Private IBOutlet
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private var router: RegisterRouter?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        router = RegisterRouter(controller: self)
    }
    
    // MARK: - Private IBAction
    @IBAction private func registerAction(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: Constants.userDefaultsKeyString)
        router?.toColor()
    }
    @IBAction private func backAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
