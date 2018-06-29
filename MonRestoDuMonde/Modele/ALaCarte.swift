//
//  ALaCarte.swift
//  MonRestoDuMonde
//
//  Created by MAC-Anas on 29/06/2018.
//  Copyright © 2018 MAC-Anas. All rights reserved.
//

import UIKit

class ALaCarte {
    
    private var _type: Type
    private var _plats: [Plat]
    
    var type: Type {
        return _type
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(type: Type) {
        self._type = type
        self._plats = [Plat]()
    }
    
}
