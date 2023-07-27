//
//  ViewController.swift
//  BasicNoteApp
//
//  Created by Berkay Sarıkaya on 12.07.2023.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    let label1: ReusableLabel = ReusableLabel(labelText: "Sign Up", labelType: .font1, labelColor: .black)
    let label2: ReusableLabel = ReusableLabel(labelText: "Login or sign up to continue using our app", labelType: .font1, labelColor: .gray)
    let label3: ReusableLabel = ReusableLabel(labelText: "Already have an account?", labelType: .font1, labelColor: .gray)
    let label4: ReusableLabel = ReusableLabel(labelText: "Sign in now", labelType: .font1, labelColor: .purple100)
    let button1: FullWidthButton = FullWidthButton(buttonText: "Sign Up", isPassive: false)
    private let fullNameTextField = FloatLabelTextField()
    private let emailTextField = FloatLabelTextField()
    private let passwordTextField = FloatLabelTextField()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(fullNameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button1)
        
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
        bodyStackView.alignment = UIStackView.Alignment.fill
        bodyStackView.spacing   = 24.0
        bodyStackView.addArrangedSubview(fullNameTextField)
        bodyStackView.addArrangedSubview(emailTextField)
        bodyStackView.addArrangedSubview(passwordTextField)
        bodyStackView.addArrangedSubview(button1)
        bodyStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bodyStackView)
        
        let footerStackView   = UIStackView()
        footerStackView.axis  = NSLayoutConstraint.Axis.horizontal
        footerStackView.distribution  = UIStackView.Distribution.equalSpacing
        footerStackView.alignment = UIStackView.Alignment.center
        footerStackView.spacing   = 24.0
        footerStackView.addArrangedSubview(label3)
        footerStackView.addArrangedSubview(label4)
        footerStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(footerStackView)
        
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.top
        stackView.spacing   = 50
        stackView.addArrangedSubview(headerStackView)
        stackView.addArrangedSubview(bodyStackView)
        stackView.addArrangedSubview(footerStackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerStackView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 96),
            bodyStackView.topAnchor.constraint(equalTo: headerStackView.bottomAnchor, constant: 24),
            bodyStackView.bottomAnchor.constraint(equalTo: footerStackView.topAnchor, constant: -150),
            footerStackView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
    ])
    }
}
