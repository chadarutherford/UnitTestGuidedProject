//
//  SearchViewController.swift
//  iTunesSearchAPIUnitTestGuidedProject
//
//  Created by Chad Rutherford on 8/28/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
	
	let resultTypeSegmentedControl: UISegmentedControl = {
		let items = ["Apps", "Music", "Movies"]
		let segControl = UISegmentedControl(items: items)
		segControl.translatesAutoresizingMaskIntoConstraints = false
		segControl.selectedSegmentIndex = 0
		segControl.addTarget(self, action: #selector(resultTypeChanged), for: .valueChanged)
		return segControl
	}()
	
	let searchBar: UISearchBar = {
		let search = UISearchBar()
		search.translatesAutoresizingMaskIntoConstraints = false
		search.barStyle = .default
		search.isTranslucent = true
		return search
	}()
	
	let tableView: UITableView = {
		let table = UITableView()
		table.translatesAutoresizingMaskIntoConstraints = false
		return table
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureUI()
	}
	
	private func setupTableView() {
		title = "iTunes Search"
	}
	
	private func configureUI() {
		view.backgroundColor = .systemBackground
		view.addSubview(resultTypeSegmentedControl)
		view.addSubview(searchBar)
		view.addSubview(tableView)
		NSLayoutConstraint.activate([
			resultTypeSegmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
			resultTypeSegmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
			resultTypeSegmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
			
			searchBar.topAnchor.constraint(equalTo: resultTypeSegmentedControl.bottomAnchor, constant: 8),
			searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			searchBar.heightAnchor.constraint(equalToConstant: 44),
			
			tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
			tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		])
	}
	
	@objc private func resultTypeChanged() {
		
	}
}
