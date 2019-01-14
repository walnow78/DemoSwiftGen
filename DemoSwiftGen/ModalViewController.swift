//
//  ModalViewController.swift
//  DemoSwiftGen
//
//  Created by Pawel Walicki on 14/01/2019.
//  Copyright © 2019 Pawel Walicki. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.setTitle(L10n.Modalvc.closeButton, for: .normal)
        }
    }
   
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = L10n.Modalvc.title
        view.backgroundColor = ColorName.orange.color
    }
    
    // MARK: - Actions
    @IBAction func closeButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
}
