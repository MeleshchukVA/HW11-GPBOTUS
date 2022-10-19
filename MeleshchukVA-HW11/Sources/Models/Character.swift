//
//  Character.swift
//  MeleshchukVA-HW11
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

struct Character: Hashable {
    let name: String
    let image: UIImage?
}

let characters = [
    Character(name: "Big Smoke", image: UIImage(named: "BigSmoke")),
    Character(name: "Carl Johnson", image: UIImage(named: "CarlJohnson")),
    Character(name: "Catalina", image: UIImage(named: "Catalina")),
    Character(name: "Cesar Vialpando", image: UIImage(named: "CesarVialpando")),
    Character(name: "Claude Speed", image: UIImage(named: "ClaudeSpeed")),
    Character(name: "Denise Robinson", image: UIImage(named: "DeniseRobinson")),
    Character(name: "Dwaine", image: UIImage(named: "Dwaine")),
    Character(name: "Eddie Pulaski", image: UIImage(named: "EddiePulaski")),
    Character(name: "Frank Tenpenny", image: UIImage(named: "FrankTenpenny")),
    Character(name: "Jethro", image: UIImage(named: "Jethro")),
    Character(name: "Jizzy B", image: UIImage(named: "JizzyB")),
    Character(name: "Kendl Johnson", image: UIImage(named: "KendlJohnson")),
    Character(name: "Kent Paul", image: UIImage(named: "KentPaul")),
    Character(name: "Maccer", image: UIImage(named: "Maccer")),
    Character(name: "Madd Dogg", image: UIImage(named: "MaddDogg")),
    Character(name: "Mike Toreno", image: UIImage(named: "MikeToreno")),
    Character(name: "OG Loc", image: UIImage(named: "OGLoc")),
    Character(name: "Ryder", image: UIImage(named: "Ryder")),
    Character(name: "Sean Johnson", image: UIImage(named: "SeanJohnson")),
    Character(name: "T-Bone Mendez", image: UIImage(named: "TBoneMendez")),
    Character(name: "The Truth", image: UIImage(named: "TheTruth")),
    Character(name: "Wu Zi Mu", image: UIImage(named: "WuZiMu")),
    Character(name: "Zero", image: UIImage(named: "Zero")),
]
