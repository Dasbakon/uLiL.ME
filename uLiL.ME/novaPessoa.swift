//
//  NovaPessoa.swift
//  uLiL.ME
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
class NovaPessoa{
    
    let nome: String, idade: String, nomeDaFoto: String
    init(nome: String, idade: String, nomeDaFoto: String){
        
        self.nome = nome
        self.idade = idade
        self.nomeDaFoto = nomeDaFoto
    }
    
}

class NovaPessoaDAO{
    
    static func getList() -> [NovaPessoa]{
        
        return[
            
            NovaPessoa(nome: "Talita", idade: "23", nomeDaFoto: "talitaFoto"),
            NovaPessoa(nome: "Raquel", idade: "20", nomeDaFoto: "raquelFoto")
            
        ]
    }
}
