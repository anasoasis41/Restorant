//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by MAC-Anas on 06/07/2018.
//  Copyright © 2018 MAC-Anas. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var scrolll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scrolll)
        
        guard menu != nil else {
            return
        }
        miseEnPlace(menu: menu!)
    }
    
    func miseEnPlace(menu: Menu) {
        print("Ca marche on a le menu: \(menu.pays)")
    }

}
