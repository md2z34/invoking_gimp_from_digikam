#!/bin/bash
/Applications/GIMP.app/Contents/MacOS/gimp -idf -b "(basic-enhance-cli \"$INPUT\" \"$OUTPUT\")" -b "(gimp-quit 0)"

