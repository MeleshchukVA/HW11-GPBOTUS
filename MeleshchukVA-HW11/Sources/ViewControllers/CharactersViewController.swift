//
//  CharactersViewController.swift
//  MeleshchukVA-HW11
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class CharactersViewController: UIViewController {
    
    // MARK: - Properties
    
    enum Section { case main }
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource<Section, Character>!
    
    // MARK: - Init
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupCollectionView()
        setupDataSource()
        setupSnapshot(on: characters)
    }
}

private extension CharactersViewController {
    
    func setupView() {
        view.backgroundColor = .systemBackground
        title = "GTA SA Characters"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(
            frame: view.bounds,
            collectionViewLayout: createThreeColumnFlowLayout(in: view)
        )
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        
        collectionView.register(
            CharacterCollectionViewCell.self,
            forCellWithReuseIdentifier: CharacterCollectionViewCell.reuseID
        )
    }
    
    func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
    
    func setupDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Character>(
            collectionView: collectionView,
            cellProvider: {
                (collectionView, indexPath, character) -> UICollectionViewCell? in
                
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: CharacterCollectionViewCell.reuseID,
                    for: indexPath
                ) as? CharacterCollectionViewCell
                
                cell?.setup(character: character)
                return cell
            })
    }
    
    func setupSnapshot(on characters: [Character]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Character>()
        snapshot.appendSections([.main])
        snapshot.appendItems(characters)
        DispatchQueue.main.async { self.dataSource.apply(snapshot, animatingDifferences: true) }
    }
}
