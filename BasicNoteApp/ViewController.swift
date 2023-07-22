//
//  ViewController.swift
//  BasicNoteApp
//
//  Created by Berkay Sarıkaya on 12.07.2023.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    let label1: ReusableLabel = ReusableLabel(labelText: "Sign Up", labelType: .font1, labelColor: .black)
    let label2: ReusableLabel = ReusableLabel(labelText: "Login or sign up to continue using our app", labelType: .font1, labelColor: .darkGray)
    let button: FullWidthButton = FullWidthButton(buttonText: "Sign Up", isPassive: true)
    private let fullNameTextField = FloatLabelTextField()
    private let emailTextField = FloatLabelTextField()
    private let passwordTextField = FloatLabelTextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(fullNameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button)
        let headerStackView   = UIStackView()
        headerStackView.axis  = NSLayoutConstraint.Axis.vertical
        headerStackView.distribution  = UIStackView.Distribution.equalSpacing
        headerStackView.alignment = UIStackView.Alignment.center
        headerStackView.spacing   = 16.0

        headerStackView.addArrangedSubview(label1)
        headerStackView.addArrangedSubview(label2)
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(headerStackView)

        let bodyStackView   = UIStackView()
        bodyStackView.axis  = NSLayoutConstraint.Axis.vertical
        bodyStackView.distribution  = UIStackView.Distribution.equalSpacing
        bodyStackView.alignment = UIStackView.Alignment.center
        bodyStackView.spacing   = 24.0

        bodyStackView.addArrangedSubview(fullNameTextField)
        bodyStackView.addArrangedSubview(emailTextField)
        bodyStackView.addArrangedSubview(passwordTextField)
        bodyStackView.addArrangedSubview(button)
        bodyStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bodyStackView)
        
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.top
        stackView.spacing   = 50
        
        stackView.addArrangedSubview(headerStackView)
        stackView.addArrangedSubview(bodyStackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            headerStackView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 96),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    }
}
