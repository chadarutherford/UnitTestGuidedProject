//
//  PokemonCell.swift
//  PokedexUnitTests
//
//  Created by Chad Rutherford on 8/28/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

protocol ReuseIdentifying {
	static var reuseIdentifier: String { get }
}

class PokemonCell: UITableViewCell {
	
	let nameLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textColor = .label
		return label
	}()
	
	var pokemon: Pokemon? {
		didSet {
			updateViews()
		}
	}
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		commonInit()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	
	private func commonInit() {
		contentView.addSubview(nameLabel)
		NSLayoutConstraint.activate([
			nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			nameLabel.trailingAnchor.constraint(greaterThanOrEqualTo: contentView.trailingAnchor, constant: -8),
			nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
		])
	}
	
	private func updateViews() {
		guard let pokemon = pokemon else { return }
		nameLabel.text = pokemon.name
	}
}

extension PokemonCell: ReuseIdentifying {
	static var reuseIdentifier: String {
		String(describing: Self.self)
	}
}
