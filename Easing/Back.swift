//
//  Back.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit

struct Back{
    static var EaseIn :Easing    = { (_t,b,c,d) -> CGFloat in
        let s:CGFloat = 1.70158
        let t = _t/d
        return c*t*t*((s+1)*t - s) + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        let s:CGFloat = 1.70158
        let t = _t/d-1
        return c*(t*t*((s+1)*t + s) + 1) + b
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        var s:CGFloat = 1.70158
        var t = _t/(d/2)
        if t < 1{
            s *= (1.525)
            return c/2*(t*t*((s+1)*t - s)) + b;
        }
        s *= 1.525
        t -= 2
        return c/2*(t*t*((s+1)*t + s) + 2) + b;
    }
}


extension Back{
    static var ExtendedEaseIn : BackEasing     = { (_t:CGFloat,b:CGFloat,c:CGFloat,d:CGFloat,s:CGFloat) -> CGFloat in
        let t = _t/d
        return c*t*t*((s+1)*t - s) + b;
    }
    
    static var ExtendedEaseOut  :BackEasing    = { (_t:CGFloat,b:CGFloat,c:CGFloat,d:CGFloat,s:CGFloat) -> CGFloat in
        let t = _t/d-1
        return c*(t*t*((s+1)*t + s) + 1) + b
    }
    
    static var ExtendedEaseInOut :BackEasing    = { (_t:CGFloat,b:CGFloat,c:CGFloat,d:CGFloat,_s:CGFloat) -> CGFloat in
        var t = _t/(d/2)
        var s = _s
        
        if t < 1{
            s *= 1.525
            return c/2*(t*t*((s+1)*t - s)) + b;
        }
        s *= 1.525
        t -= 2
        return c/2*(t*t*((s+1)*t + s) + 2) + b;
    }
}
