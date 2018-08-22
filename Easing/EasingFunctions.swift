//
//  EasingFunctions.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation
import UIKit


typealias Easing        = (_ t:CGFloat,_ b:CGFloat,_ c:CGFloat,_ d:CGFloat)-> CGFloat
typealias BackEasing    = (_ t:CGFloat,_ b:CGFloat,_ c:CGFloat,_ d:CGFloat,_ s:CGFloat)-> CGFloat
typealias ElasticEasing = (_ t:CGFloat,_ b:CGFloat,_ c:CGFloat,_ d:CGFloat,_ a:CGFloat,_ p:CGFloat)-> CGFloat

