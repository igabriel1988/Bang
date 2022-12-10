//
//  ViewController.swift
//  Bang
//
//  Created by Ivan Gabriel on 09/12/22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate
{
    @IBOutlet var label: UILabel!
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad()
            {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
            }

    override func motionBegan( _ motion: UIEvent.EventSubtype, with event: UIEvent? )
            {
                guard let url = Bundle.main.url( forResource: "loud_bang", withExtension: "mp3" )
                else
                    {
                        print( "Ocurrio un error" )
                        return
                    }
                do
                    {
                            audioPlayer = try AVAudioPlayer(contentsOf: url)
                            
                            label.text = "Bang!"
                            audioPlayer.play()
                    }
                catch{
                    label.text = "Error al cargar archivo de audio"
                }
            }
}

