//
//  ViewController.swift
//  DemoSwiftGen
//
//  Created by Pawel Walicki on 13/01/2019.
//  Copyright © 2019 Pawel Walicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.image = Asset.image1.image
        }
    }
   
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = FontFamily.Pacifico.regular.font(size: 20)
            label.textColor = ColorName.orange.color
            label.text = L10n.Viewcontroller1.labelText
        }
    }

    @IBOutlet weak var showSecondViewControllerbutton: UIButton! {
        didSet {
            showSecondViewControllerbutton.setTitle(L10n.Viewcontroller1.showSecondVCButton, for: .normal)
            showSecondViewControllerbutton.setTitleColor(ColorName.orange.color, for: .normal)
        }
    }
    
    @IBOutlet weak var showModalViewController: UIButton! {
        didSet {
            showModalViewController.setTitle(L10n.Viewcontroller1.showModalVCButton, for: .normal)
            showModalViewController.setTitleColor(ColorName.orange.color, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == StoryboardSegue.Main.showSecondViewController.rawValue {
            guard let _ = segue.destination as? SecondViewController else { return }
            print("Show SecondViewController")
        }
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = L10n.Viewcontroller1.title
    }

    // MARK: - Actiosn
    @IBAction func showModalViewControllerAction(_ sender: UIButton) {
        let modalVC = StoryboardScene.Main.modalViewController.instantiate()
        present(modalVC, animated: true, completion: nil)
    }
}

