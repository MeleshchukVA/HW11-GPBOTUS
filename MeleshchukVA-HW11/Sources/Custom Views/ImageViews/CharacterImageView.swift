//
//  CharacterImageView.swift
//  MeleshchukVA-HW11
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class CharacterImageView: UIImageView {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private methods

private extension CharacterImageView {
    
    func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
