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
    let label5: ReusableLabel = ReusableLabel(labelText: "Forgot Password?", labelType: .font1, labelColor: .black)
    let button1: FullWidthButton = FullWidthButton(buttonText: "Sign Up", isPassive: false)
    
    private let fullNameTextField = FloatLabelTextField()
    private let emailTextField = FloatLabelTextField()
    private let passwordTextField = FloatLabelTextField()
    
    override func viewDidLoad() {
        
        label1.font = label1.font.withSize(20)
        super.viewDidLoad()
        
        let guide = view.safeAreaLayoutGuide
        view.backgroundColor = .white
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(fullNameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button1)
        
        let headerStackView = UIStackView()
        headerStackView.axis  = NSLayoutConstraint.Axis.vertical
        headerStackView.distribution  = UIStackView.Distribution.equalSpacing
        headerStackView.alignment = UIStackView.Alignment.center
        headerStackView.spacing   = 16.0
        headerStackView.addArrangedSubview(label1)
        headerStackView.addArrangedSubview(label2)
        label1.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
        label2.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(headerStackView)

        let bodyStackView = UIStackView()
        bodyStackView.axis  = NSLayoutConstraint.Axis.vertical
        bodyStackView.distribution  = UIStackView.Distribution.equalSpacing
        bodyStackView.alignment = UIStackView.Alignment.fill
        bodyStackView.spacing   = 16.0
        bodyStackView.addArrangedSubview(fullNameTextField)
        bodyStackView.addArrangedSubview(emailTextField)
        bodyStackView.addArrangedSubview(passwordTextField)
        bodyStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bodyStackView)
        
        let passwordStackView = UIStackView()
        passwordStackView.axis  = NSLayoutConstraint.Axis.vertical
        passwordStackView.distribution  = UIStackView.Distribution.equalSpacing
        passwordStackView.alignment = UIStackView.Alignment.trailing
        passwordStackView.spacing = 16
        passwordStackView.addArrangedSubview(label5)
        label5.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        passwordStackView.addArrangedSubview(button1)
        bodyStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(passwordStackView)
    
        let stackView = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing   = 40
        stackView.addArrangedSubview(headerStackView)
        stackView.addArrangedSubview(bodyStackView)
        stackView.addArrangedSubview(passwordStackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        let footerStackView = UIStackView()
        footerStackView.axis  = NSLayoutConstraint.Axis.horizontal
        footerStackView.distribution  = UIStackView.Distribution.equalSpacing
        footerStackView.alignment = UIStackView.Alignment.center
        footerStackView.spacing   = 6.0
        footerStackView.addArrangedSubview(label3)
        label3.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        footerStackView.addArrangedSubview(label4)
        label4.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        footerStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(footerStackView)
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0),
            guide.bottomAnchor.constraint(equalToSystemSpacingBelow: view.bottomAnchor, multiplier: 1.0),
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            headerStackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 96),
            bodyStackView.topAnchor.constraint(equalTo: headerStackView.safeAreaLayoutGuide.bottomAnchor),
            bodyStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            footerStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            footerStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
    ])
    }
}
