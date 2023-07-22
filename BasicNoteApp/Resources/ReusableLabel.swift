//
//  ReusableLabel.swift
//  BasicNoteApp
//
//  Created by Berkay Sarıkaya on 17.07.2023.
//
import UIKit

class ReusableLabel: UILabel {
    enum LabelTypeEnum {
        case font1
        case font2
        case font3
    }
    enum ColorStyle {
        case black
        case darkGray
        case green
        case brown
        case magenta
        case orange
    }
    public private(set) var labelType: LabelTypeEnum
    public private(set) var labelText: String
    public private(set) var labelColor: ColorStyle
    init(labelText: String, labelType: LabelTypeEnum, labelColor: ColorStyle) {
        self.labelText = labelText
        self.labelType = labelType
        self.labelColor = labelColor
        super.init(frame: .zero)
        self.configureLabelStyle()
        self.configureLabelColor()
        self.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString(string: labelText)
        self.attributedText = attributedString 
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configureLabelColor() {
        switch labelColor {
        case .black:
            self.textColor = .black
        case .darkGray:
            self.textColor = .darkGray
        case .green:
            self.textColor = .green
        case .brown:
            self.textColor = .brown
        case .magenta:
            self.textColor = .magenta
        case .orange:
            self.textColor = .orange
        }
    }
    private func configureLabelStyle() {
        switch labelType {
        case .font1:
            self.font = UIFont(name: "Times New Roman", size: 18)
        case .font2:
            self.font = UIFont(name: "Ariel", size: 18)
        case .font3:
            self.font = UIFont(name: "Verdana", size: 18)
        }
    }
}
