//
//  Linear.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit

struct Linear{
    static var EaseIn :Easing    = { (t,b,c,d) -> CGFloat in
        return c*(t/d)+b
    }
    static var EaseOut :Easing   = { (t,b,c,d) -> CGFloat in
        return c*(t/d)+b
    }
    static var EaseInOut :Easing = { (t,b,c,d) -> CGFloat in
        return c*(t/d)+b
    }
}
