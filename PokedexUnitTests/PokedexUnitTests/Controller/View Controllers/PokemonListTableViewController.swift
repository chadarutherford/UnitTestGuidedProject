//
//  PokemonListTableViewController.swift
//  PokedexUnitTests
//
//  Created by Chad Rutherford on 8/28/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class PokemonListTableViewController: UITableViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		configureViewController()
	}
	
	private func configureViewController() {
		view.backgroundColor = .systemBackground
		title = "Pokedex"
		navigationController?.navigationBar.prefersLargeTitles = true
		tableView.register(PokemonCell.self, forCellReuseIdentifier: PokemonCell.reuseIdentifier)
	}
}
