//
//  pessoa.swift
//  uLiL.ME
//
//  Created by student on 12/08/19.
//  Copyright © 2019 student. All rights reserved.
//
import Foundation
class Pessoa{
    
    let nome: String, msg: String, nomeDaFoto: String
    init(nome: String, msg: String, nomeDaFoto: String){
        
        self.nome = nome
        self.msg = msg
        self.nomeDaFoto = nomeDaFoto
    }
    
}

class PessoaDAO{
    
    static func getList() -> [Pessoa]{
        
        return[
            
            Pessoa(nome: "Pablo", msg: "Obrigado!", nomeDaFoto: "pabloFoto"),
            Pessoa(nome: "Carol", msg: "Tudo bem, e vc?", nomeDaFoto: "carolFoto")
            
        ]
    }
}
