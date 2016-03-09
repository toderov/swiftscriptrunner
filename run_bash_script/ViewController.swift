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

    func commandTerminationHandler(task: NSTask) -> Void {
        runButton.enabled = true
    }
    
    @IBAction func runScript(sender: AnyObject) {
        runButton.enabled = false
        
        // path to script or bash command
        let script = "~/test.sh"
        //let script = "echo Hello World!"
        
        let task = NSTask()
        task.terminationHandler = self.commandTerminationHandler
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", script]
        task.launch()
    }
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

