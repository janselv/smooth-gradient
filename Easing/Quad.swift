//
//  Quad.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit

struct Quad{
    static var EaseIn :Easing    = { (_t,b,c,d) -> CGFloat in
        let t = _t/d
        return c*t*t + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        let t = _t/d
        return -c * t*(t-2) + b
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        var t = _t/(d/2)
        if t < 1{
            return c/2*t*t + b;
        }
        let t1 = t-1
        let t2 = t1-2
        return -c/2 * ((t1)*(t2) - 1) + b;
    }
}
