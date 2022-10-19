//
//  CharacterCollectionViewCell.swift
//  MeleshchukVA-HW11
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class CharacterCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    let characterImageView = CharacterImageView(frame: .zero)
    let nameLabel = BaseLabel(frame: .zero)
    
    static let reuseID = "CharacterCell"
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Public methods

extension CharacterCollectionViewCell {
    
    func setup(character: Character) {
        characterImageView.image = character.image
        nameLabel.text = character.name
    }
}

// MARK: - Private methods

private extension CharacterCollectionViewCell {
    
    func configure() {
        addSubview(characterImageView)
        addSubview(nameLabel)

        let padding: CGFloat = 8

        NSLayoutConstraint.activate([
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            characterImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            characterImageView.heightAnchor.constraint(equalTo: characterImageView.widthAnchor),

            nameLabel.topAnchor.constraint(equalTo: characterImageView.bottomAnchor, constant: 4),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            nameLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
