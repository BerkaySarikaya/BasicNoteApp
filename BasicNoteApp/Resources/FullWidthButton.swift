//
//  FullWidthButton.swift
//  BasicNoteApp
//
//  Created by Berkay Sarıkaya on 17.07.2023.
//

import UIKit

class FullWidthButton: UIButton {
    public private(set) var buttonText: String
    public private(set) var isPassive: Bool
    init(buttonText: String, isPassive: Bool) {
        self.buttonText = buttonText
        self.isPassive = isPassive
        super.init(frame: .zero)
        self.frame = CGRect(x: 0, y: 0, width: 327, height: 63)
        if isPassive {
            self.layer.backgroundColor = UIColor(red: 0.5451, green: 0.549, blue: 1, alpha: 1.0).cgColor
            self.setTitleColor(.white, for: .normal)
        } else {
            self.layer.backgroundColor = UIColor(red: 0.8627, green: 0.8627, blue: 1, alpha: 1).cgColor
            self.setTitleColor(UIColor(red: 0.5451, green: 0.549, blue: 1, alpha: 1.0), for: .normal)
        }
        self.layer.cornerRadius = 5
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 327).isActive = true
        self.heightAnchor.constraint(equalToConstant: 63).isActive = true
        self.setTitle(buttonText, for: .normal)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
