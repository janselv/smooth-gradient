//
//  Circ.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit

struct Circ{
    static var EaseIn :Easing    = { (_t,b,c,d) -> CGFloat in
        let t = _t/d
        return -c * (sqrt(1 - t*t) - 1) + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        let t = _t/d-1
        return c * sqrt(1 - t*t) + b
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        var t = _t/(d/2)
        if t < 1{
            return -c/2 * (sqrt(1 - t*t) - 1) + b;
        }
        t -= 2
        return c/2 * (sqrt(1 - t*t) + 1) + b;
    }
}
