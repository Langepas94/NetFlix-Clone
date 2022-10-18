//
//  CollectionViewTableViewCell.swift
//  NetFlix Clone
//
//  Created by Артём Тюрморезов on 17.10.2022.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
// статичное свойство идентификатор
    static let identifier = "CollectionViewTableViewCell"
    // массив с заголовками
    private var titles: [Title] = [Title]()
    
    // создали коллекшн вью, который будет в ячейке
    private let collectionView: UICollectionView = {
        // настройка ячейки
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        // зарегистрировали кастомные ячейки с идентификатором
        collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        return collectionView
    }()
    
    // сделали инициализатор с инициализацией иднтификатора
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
        contentView.addSubview(collectionView)
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    // задали размер фрейма для коллекшн вью (без этого не отображается)
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    // публичный метод для заголовков
    public func configure(with titles: [Title]) {
        self.titles = titles
        DispatchQueue.main.async { [weak self] in
            self?.collectionView.reloadData()
        }
    }

}

extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .green
//        return cell
        // регистрация и настройка кастомной ячейки из TitleCollectionViewCell
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else {
            return UICollectionViewCell()
        }
        guard let model = titles[indexPath.row].poster_path else { return UICollectionViewCell() }
        cell.configure(with: model)
        return cell
    }
    
    
}
