//  BaseRouter.swift
//  Router
//  Created by angelina on 27.12.2022.

import Foundation
import UIKit

/// Базовый роутер
class BaseRouter: NSObject {
    
    // MARK: - Constants
    private enum Constants {
        static let waitString = "Ожидался"
    }
    
    // MARK: - Public properties
    var controller: UIViewController?
    
    // MARK: - Initializer
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    // MARK: - Public methods
    func perform<Controller: UIViewController>(segue: String, performAction: ((Controller) -> Void)? = nil) {
        let performAction = performAction.map { action in
            { (controller: UIViewController) in
                guard let controller = controller as? Controller else {
                    assertionFailure("\(Constants.waitString) \(Controller.self)")
                    return
                }
                action(controller)
            }
        }
        controller?.performSegue(withIdentifier: segue, sender: performAction)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let action = sender as? ((UIViewController) -> Void) else { return }
        action(segue.destination)
    }
}
