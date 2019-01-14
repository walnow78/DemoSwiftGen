//
//  SecondViewController.swift
//  DemoSwiftGen
//
//  Created by Pawel Walicki on 13/01/2019.
//  Copyright © 2019 Pawel Walicki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = L10n.Viewcontroller2.title
        view.backgroundColor = ColorName.blue.color
    }
}
