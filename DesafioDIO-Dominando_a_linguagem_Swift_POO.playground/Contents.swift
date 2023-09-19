import UIKit

/*
 
 Utilizar os seguintes conceitos
 
 - Controle de fluxo ✅
 - Coleções ✅
 - Funções e Closures ✅
 - Enums e Structs ✅
 - Concorrências
 
 */

class Pokemon {
    var id: Int
    var name: String
    var type: Type
    var height: Double
    var weight: Double
    
    init(id: Int, name: String, type: Type, height: Double, weight: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.height = height
        self.weight = weight
    }
    
    func battle(enemyPokemon: Pokemon) {
        if self.type == Type.fire && enemyPokemon.type == Type.water{
            print("\(self.name) lost")
        }else if self.type == Type.water && enemyPokemon.type == Type.grass {
            print("\(self.name) lost")
        }else if self.type == Type.grass && enemyPokemon.type == Type.fire {
            print("\(self.name) lost")
        }else {
            print("\(self.name) wins")
        }
    }
}

enum Type {
    case fire
    case water
    case grass
    
    func getWeaknesses() -> String{
        switch self {
        case .fire:
            return "Water, Rock and Dragon"
        case .water:
            return "Grass and Dragon"
        case .grass:
            return "Fire, Poison, Flying, Bug, Dragon and Steel"
        }
    }
}

let bulbasaur = Pokemon(id: 1, name: "Bulbasaur", type: Type.grass, height: 0.7, weight: 6.9)

let charmander = Pokemon(id: 4, name: "Charmander", type: Type.fire, height: 0.6, weight: 8.5)

let squirtle = Pokemon(id: 7, name: "Squirtle", type: Type.water, height: 0.5, weight: 9.0)

let pokedex: [Pokemon] = [bulbasaur, charmander, squirtle]

func showPokedex() {
    for pokemon in pokedex {
        print("""
        #\(pokemon.id)
        \(pokemon.name)
        \(pokemon.type)
        \(pokemon.height)
        \(pokemon.weight)
        
        Weaknesses
        \(pokemon.type.getWeaknesses())
        
        
        """)
    }
}

showPokedex()

charmander.battle(enemyPokemon: squirtle)
