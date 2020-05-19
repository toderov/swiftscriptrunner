//
//  ViewController.swift
//  run_bash_script
//
//
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var runButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func commandTerminationHandler(task: Process) -> Void {
        runButton.isEnabled = true
    }
    
    @IBAction func runScript(sender: AnyObject) {
        runButton.isEnabled = false
        
        // path to script or bash command
        let script = "/Users/Richard.Kifvel/swiftscriptrunner/Create_a_Ticket.sh"
        //let script = "say Hello World!"
        
        let task = Process()
        task.terminationHandler = self.commandTerminationHandler
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", script]
        task.launch()
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

