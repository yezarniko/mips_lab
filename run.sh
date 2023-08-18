#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <asm_file>"
    exit 1
fi


if [ ! -x /app/run_mips ]; then

	docker run -it -v "$(pwd):/app" mips_lab chmod +x /app/run_mips
fi


docker run -it -v "$(pwd):/app" mips_lab  /app/run_mips "$1"


