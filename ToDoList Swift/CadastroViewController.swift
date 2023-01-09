//
//  CadastroViewController.swift
//  ToDoList Swift
//
//  Created by Debora Luiza on 09/01/23.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBAction func adicionarTarefa(_ sender: Any) {
       if let textoDigitado = tarefaCampo.text {
            let tarefa = TarefaUserDefaults()
           tarefa.salvar(tarefa: textoDigitado)
           tarefaCampo.text = ""
           
           let dados = tarefa.listar()
           print(dados)
        }
    }
    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
