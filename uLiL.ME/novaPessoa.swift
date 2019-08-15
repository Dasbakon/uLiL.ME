//
//  NovaPessoa.swift
//  uLiL.ME
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
class NovaPessoa{
    
    let nome: String, idade: String, nomeDaFoto: String, detalhes: String
    init(nome: String, idade: String, nomeDaFoto: String, detalhes: String){
        
        self.nome = nome
        self.idade = idade
        self.nomeDaFoto = nomeDaFoto
        self.detalhes = detalhes
    }
    
}

class NovaPessoaDAO{
    
    static func getList() -> [NovaPessoa]{
        
        return[
            
            NovaPessoa(nome: "Talita", idade: "23", nomeDaFoto: "talitaFoto", detalhes: "Gosta de: viajar, ouvir música e dançar.\nInteresses: Esportes, Música, Esoterismo."),
            NovaPessoa(nome: "Raquel", idade: "20", nomeDaFoto: "raquelFoto", detalhes: "Gosta de: sair com amigos, conhecer lugares novos e ler.\nInteresses: Negócios, Gestão de tempo e Organização.")
            
        ]
    }
}
