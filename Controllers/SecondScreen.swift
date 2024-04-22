//
//  SecondScreen.swift
//  lecture20
//
//  Created by MacBook Pro on 21.04.24.
//

import UIKit

class SecondScreen: UIViewController {
    
    private var country: Country
    private var maps: Maps?

    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let countryFlag: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    private let flagTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "About the flag:"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    private let flagDescription: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.numberOfLines = 10
        return label
    }()
    
    private let horizontalLine: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        return line
    }()
    
    private let infoTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Basic informaion:"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    //    MARK: Basic Information Uilabels and Stackview
    
    private let capitalLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Capital:"
        return label
    }()
    
    private let regionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Region:"
        return label
    }()
    
    private let subregionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Subregion:"
        return label
    }()
    
    private let continentsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Continents:"
        return label
    }()
    
    private let landlockedLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Landlocked:"
        return label
    }()
    
    private let areaLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Area:"
        return label
    }()
    
    private let bordersLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Borders:"
        return label
    }()
    
    private let flagLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Flag:"
        return label
    }()
    
    private let altSpellingsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "AltSpellings:"
        return label
    }()
    
    private let populationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Population:"
        return label
    }()
    
    private let timezonesLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Timezones:"
        return label
    }()
    
    private let startOfWeekLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "StartOfWeek:"
        return label
    }()
    
    private let fifaLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "Fifa:"
        return label
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            capitalLabel,
            regionLabel,
            subregionLabel,
            continentsLabel,
            landlockedLabel,
            areaLabel,
            bordersLabel,
            flagLabel,
            altSpellingsLabel,
            populationLabel,
            timezonesLabel,
            startOfWeekLabel,
            fifaLabel
        ])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    private let capitalLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let regionLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let subregionLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let continentsLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let landlockedLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let areaLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let bordersLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let flagLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let altSpellingsLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.numberOfLines = 5
        return label
    }()
    
    private let populationLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let timezonesLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let startOfWeekLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let fifaLabelContent: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            capitalLabelContent,
            regionLabelContent,
            subregionLabelContent,
            continentsLabelContent,
            landlockedLabelContent,
            areaLabelContent,
            bordersLabelContent,
            flagLabelContent,
            altSpellingsLabelContent,
            populationLabelContent,
            timezonesLabelContent,
            startOfWeekLabelContent,
            fifaLabelContent
        ])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        stackView.alignment = .trailing
        
        return stackView
    }()
    
    private lazy var horizontalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelsStackView, contentStackView])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()
    
    private let horizontalLine2: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        return line
    }()
    
    private let googleMapsButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "googleMap"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let openStreetMapsButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "streetMap"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let linkTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Useful links:"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    
//    MARK: initialisation
    
    
    init(_ country: Country) {
        self.country = country
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        title = "Details"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        configure(with: country)
        setupScrollView()
        
        googleMapsButton.addTarget(self, action: #selector(openGoogleMaps), for: .touchUpInside)
        openStreetMapsButton.addTarget(self, action: #selector(openOpenStreetMaps), for: .touchUpInside)

    }
    
    private func setupScrollView() {
        
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(contentView)
        self.contentView.addSubview(countryFlag)
        self.contentView.addSubview(flagTitle)
        self.contentView.addSubview(flagDescription)
        self.contentView.addSubview(horizontalLine)
        self.contentView.addSubview(infoTitle)
        self.contentView.addSubview(horizontalStackView)
        self.contentView.addSubview(horizontalLine2)
        self.contentView.addSubview(linkTitle)
        self.contentView.addSubview(googleMapsButton)
        self.contentView.addSubview(openStreetMapsButton)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        countryFlag.translatesAutoresizingMaskIntoConstraints = false
        flagTitle.translatesAutoresizingMaskIntoConstraints = false
        flagDescription.translatesAutoresizingMaskIntoConstraints = false
        horizontalLine.translatesAutoresizingMaskIntoConstraints = false
        infoTitle.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalLine2.translatesAutoresizingMaskIntoConstraints = false
        linkTitle.translatesAutoresizingMaskIntoConstraints = false
        googleMapsButton.translatesAutoresizingMaskIntoConstraints = false
        openStreetMapsButton.translatesAutoresizingMaskIntoConstraints = false

        let height = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        height.priority = UILayoutPriority(1)
        height.isActive = true
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            scrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            countryFlag.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            countryFlag.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            countryFlag.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            countryFlag.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            countryFlag.heightAnchor.constraint(equalToConstant: 200),
            countryFlag.widthAnchor.constraint(equalToConstant: 450),

            flagTitle.topAnchor.constraint(equalTo: countryFlag.bottomAnchor, constant: 15),
            flagTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            flagTitle.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            flagDescription.topAnchor.constraint(equalTo: flagTitle.bottomAnchor, constant: 15),
            flagDescription.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            flagDescription.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            horizontalLine.topAnchor.constraint(equalTo: flagDescription.bottomAnchor, constant: 15),
            horizontalLine.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            horizontalLine.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            infoTitle.topAnchor.constraint(equalTo: horizontalLine.bottomAnchor, constant: 15),
            infoTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            infoTitle.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            horizontalStackView.topAnchor.constraint(equalTo: infoTitle.bottomAnchor, constant: 15),
            horizontalStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            horizontalStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            horizontalLine2.topAnchor.constraint(equalTo: horizontalStackView.bottomAnchor, constant: 15),
            horizontalLine2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            horizontalLine2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            linkTitle.topAnchor.constraint(equalTo: horizontalLine2.bottomAnchor, constant: 15),
            linkTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            linkTitle.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            googleMapsButton.topAnchor.constraint(equalTo: linkTitle.bottomAnchor, constant: 20),
            openStreetMapsButton.topAnchor.constraint(equalTo: linkTitle.bottomAnchor, constant: 20),
            
            googleMapsButton.widthAnchor.constraint(equalToConstant: 60),
            googleMapsButton.heightAnchor.constraint(equalToConstant: 60),
            openStreetMapsButton.widthAnchor.constraint(equalTo: googleMapsButton.widthAnchor),
            openStreetMapsButton.heightAnchor.constraint(equalTo: googleMapsButton.heightAnchor),
            
            googleMapsButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 67),
            openStreetMapsButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -67),
            openStreetMapsButton.leadingAnchor.constraint(equalTo: googleMapsButton.trailingAnchor, constant: 115),
            
            googleMapsButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            openStreetMapsButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),

        ])
    }
    
    public func configure(with country: Country) {
        
        flagDescription.text = country.flags.alt
        capitalLabelContent.text = country.capital?.joined(separator: ", ") ?? "N/A"
        regionLabelContent.text = country.region
        subregionLabelContent.text = country.subregion ?? "N/A"
        continentsLabelContent.text = country.continents.joined(separator: ", ")
        landlockedLabelContent.text = country.landlocked ? "Yes" : "No"
        areaLabelContent.text = "\(country.area)"
        bordersLabelContent.text = country.borders?.joined(separator: ", ") ?? "N/A"
        flagLabelContent.text = country.flag
        altSpellingsLabelContent.text = country.altSpellings.joined(separator: ", ")
        populationLabelContent.text = "\(country.population)"
        timezonesLabelContent.text = country.timezones.joined(separator: ", ")
        startOfWeekLabelContent.text = country.startOfWeek
        fifaLabelContent.text = country.fifa ?? "N/A"
        
        guard let imageUrl = URL(string: country.flags.png) else { return }
        URLSession.shared.dataTask(with: imageUrl) { [weak self] (data, response, error) in
            guard let self = self, let data = data, let image = UIImage(data: data), error == nil else
            {return}
            DispatchQueue.main.async {
                self.countryFlag.image = image
            }
        }.resume()
    }
    
    @objc private func openGoogleMaps() {
        if let googleMapsURL = maps?.googleMaps, let url = URL(string: googleMapsURL) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            print("Google Maps URL not found")
        }
    }
    
    @objc private func openOpenStreetMaps() {
        if let openStreetMapsURL = maps?.openStreetMaps, let url = URL(string: openStreetMapsURL) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            print("OpenStreetMaps URL not found")
        }
    }
    
}
