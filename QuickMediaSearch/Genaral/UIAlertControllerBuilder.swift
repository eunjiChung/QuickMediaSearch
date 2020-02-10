//
//  UIAlertControllerBuilder.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//

import UIKit

struct UIAlertButton {
    let title: String
    let style: UIAlertAction.Style
    let closure: (() -> Void)?
    
    public init(title: String = "확인", style: UIAlertAction.Style = .default, closure: (() -> Void)? = nil) {
        self.title = title
        self.style = style
        self.closure = closure
    }
}


class UIAlertControllerBuilder {
    private var title: String
    private var message: String
    private var ok: UIAlertButton?
    private var cancel: UIAlertButton?

    public init(title: String = "", message: String = "", ok: UIAlertButton? = nil, cancel: UIAlertButton? = nil) {
        self.title = title
        self.message = message
        self.ok = ok
        self.cancel = cancel
    }

    func setTitle(_ title: String) -> Self {
        self.title = title
        return self
    }
    func setMessage(_ message: String) -> Self {
        self.message = message
        return self
    }

    func setOk(_ title: String = "확인", closure: @escaping () -> Void) {
        self.ok = UIAlertButton(title: title, closure: closure)
    }

    func setCancel(_ title: String = "취소", closure: @escaping () -> Void) {
        self.ok = UIAlertButton(title: title, closure: closure)
    }

    func build() -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if self.ok == nil {
            self.ok = UIAlertButton(title: "확인")
        }

        if let ok = self.ok {
            alert.addAction(UIAlertAction(title: ok.title, style: ok.style, handler: { _ in ok.closure?() }))
        }
        
        if let cancel = self.cancel {
            alert.addAction(UIAlertAction(title: cancel.title, style: cancel.style, handler: { _ in cancel.closure?() }))
        }
        
        return alert
    }
}
