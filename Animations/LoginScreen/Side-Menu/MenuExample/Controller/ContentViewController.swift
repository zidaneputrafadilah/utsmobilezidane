//
//  ContentView.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 08/11/23.
//

import UIKit

class ContentViewController: UIViewController {
    
    var type: ContentType = .Music

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: type.rawValue)
    }
}
