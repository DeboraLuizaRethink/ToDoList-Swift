//
//  TarefaUserDefaults.swift
//  ToDoList Swift
//
//  Created by Debora Luiza on 09/01/23.
//

import UIKit

class TarefaUserDefaults{
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remover(index: Int){
        
        tarefas = listar()
        
        
        tarefas.remove(at: index)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func salvar(tarefa: String){
        // recuperar as tarefas já salvas
        tarefas = listar()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func listar()-> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
    }
}
