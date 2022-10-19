//
//  BaseLabel.swift
//  MeleshchukVA-HW11
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class BaseLabel: UILabel {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Private methods

private extension BaseLabel {
    
    func configure() {
        textColor = .label
        textAlignment = .center
        font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        numberOfLines = 0
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
