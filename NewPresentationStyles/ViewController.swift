//
//  ViewController.swift
//  NewPresentationStyles
//
//  Created by AzizOfficial on 6/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    private func menu() -> UIMenu {
        let medium = UIAction.init(title: "Medium") { action in
            guard let navigationController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NAVIGATION_CONTROLLER") as? UINavigationController else { return }
            navigationController.modalPresentationStyle = .popover
            if let popover = navigationController.popoverPresentationController {
                let sheet = popover.adaptiveSheetPresentationController
                sheet.detents = [.medium()]
                sheet.prefersGrabberVisible = true
            }
            self.present(navigationController, animated: true, completion: nil)
        }
        let large = UIAction.init(title: "Large") { action in
            guard let navigationController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NAVIGATION_CONTROLLER") as? UINavigationController else { return }
            navigationController.modalPresentationStyle = .popover
            if let popover = navigationController.popoverPresentationController {
                let sheet = popover.adaptiveSheetPresentationController
                sheet.detents = [.large()]
                sheet.prefersGrabberVisible = true
            }
            self.present(navigationController, animated: true, completion: nil)
        }
        let both = UIAction.init(title: "Both") { action in
            guard let navigationController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NAVIGATION_CONTROLLER") as? UINavigationController else { return }
            navigationController.modalPresentationStyle = .popover
            if let popover = navigationController.popoverPresentationController {
                let sheet = popover.adaptiveSheetPresentationController
                sheet.detents = [.medium(), .large()]
                sheet.prefersGrabberVisible = true
            }
            self.present(navigationController, animated: true, completion: nil)
        }
        return UIMenu.init(options: .displayInline, children: [medium, large, both])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(systemItem: .add, primaryAction: nil, menu: menu())
    }
}

