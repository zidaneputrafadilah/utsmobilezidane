//
//  ContentView.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 08/11/23.
//

import QuartzCore

class AnimationDelegate: NSObject, CAAnimationDelegate {
    
    fileprivate let completion: () -> Void

    init(completion: @escaping () -> Void) {
        self.completion = completion
    }

    dynamic func animationDidStop(_: CAAnimation, finished: Bool) {
        completion()
    }
}
