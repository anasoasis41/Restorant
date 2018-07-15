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
        let imageDuMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageDuMenu.image = menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        imageDuMenu.clipsToBounds = true
        scrolll.addSubview(imageDuMenu)
        var maxY = imageDuMenu.frame.maxY
        
        let nomDuMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.textColor = .red
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        scrolll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat in menu.plats {
            let vue = PlatVue(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnPlace(plat: plat)
            scrolll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scrolll.contentSize = CGSize(width: view.frame.width, height: maxY + 50)
    }

}
