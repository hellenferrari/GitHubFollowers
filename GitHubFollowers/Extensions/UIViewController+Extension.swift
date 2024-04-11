//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import UIKit
import SafariServices

fileprivate var containerView: UIView!

extension UIViewController {
        
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertViewController = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertViewController.modalPresentationStyle = .overFullScreen
        alertViewController.modalTransitionStyle = .crossDissolve
        present(alertViewController, animated: true)
    }
    
    func presentDefaultError() {
        let alertViewController = GFAlertViewController(
            title: "Something went wrong",
            message: "We were unable to complete your task at this time. Please try again",
            buttonTitle: "Ok"
        )
        alertViewController.modalPresentationStyle = .overFullScreen
        alertViewController.modalTransitionStyle = .crossDissolve
        present(alertViewController, animated: true)
    }
    
    func presentSafari(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
    
}
