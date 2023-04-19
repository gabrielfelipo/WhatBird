//
//  File.swift
//  
//
//  Created by gabrielfelipo on 19/04/23.
//

import Foundation
import SwiftUI

let hintsData = [
    Hint(image: Image("Hint_1"),
         text:
            Text("1. The bird is a ").foregroundColor(.white)+Text("nocturnal bird").foregroundColor(.orange)
        ),
    Hint(image: Image("Hint_2"),
         text:
            Text("2. The bird was elected the ").foregroundColor(.white)+Text("bird of the year").foregroundColor(.yellow)+Text(" in 2020").foregroundColor(.white)
        ),
    Hint(image: Image("Hint_3"),
         text:
            Text("3. The bird has a ").foregroundColor(.white)+Text("moss green coat").foregroundColor(.green)
        ),
    Hint(image: Image("Hint_4"),
         text:
            Text("4. The bird does ").foregroundColor(.white)+Text("not fly").foregroundColor(.red)
        )
]
