//
//  Expo.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit

struct Expo{
    static var EaseIn :Easing    = { (_t,b,c,d) -> CGFloat in
        return (_t==0) ? b : c * pow(2, 10 * (_t/d - 1)) + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        return (_t==d) ? b+c : c * (-pow(2, -10 * _t/d) + 1) + b
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        if _t==0{ return b }
        if _t==d{ return b+c}
        
        var t = _t/(d/2)
        
        if t < 1{
            return c/2 * pow(2, 10 * (_t - 1)) + b;
        }
        let t1 = t-1
        return c/2 * (-pow(2, -10 * t1) + 2) + b;
    }
}
