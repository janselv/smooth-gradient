# iOS Smooth Gradients using Penners's Easing Functions

This project use the [Swift Penner's Functions](https://github.com/janselr/swift-penner-easing) to draw gradients that interpolate not linearly, creating a smooth effect. Easing functions vary the rate at which gradient shading changes. Depending on the function you select, they provide gentler transitions into and out of the gradient.

Tweaking gradients we can turn the first image into second using these functions.

![Regular](https://github.com/janselr/Smooth-CGGradient/blob/master/screenshots/gradient_cg.png) ![Smooth](https://github.com/janselr/Smooth-CGGradient/blob/master/screenshots/gradient_ds.png)


## Usage
```swift
let c1 = UIColor(white: 0, alpha: 0)
let c2 = UIColor(white: 0, alpha: 1)

let gradient = CGGradient.with(Cubic.EaseIn, between: c1, and: c2)

// for less pronounced beginning try
let gradient = CGGradient.with(Quad.EaseIn, between: c1, and: c2)
```

You can also play with other esing function or and write your own.

Supports iOS 7+
