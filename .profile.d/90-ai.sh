############################################################
# AI
#
# Local LLMs and AI tooling.
############################################################

# Launch background server for VS Code / Continue
alias code-server="/usr/local/bin/llama-server -dev MTL0 --n-gpu-layers 999 --flash-attn on --ctx-size 8192 --port 8080 -m /Users/brandonmorse/Sites/models/qwen2.5-coder-14b-instruct-q8_0.gguf"

# Launch instant interactive terminal chat for academic research
alias research="/usr/local/bin/llama-cli -dev MTL0 --n-gpu-layers 999 --flash-attn on --ctx-size 16384 -cnv --color on -m /Users/brandonmorse/Sites/models/qwen2.5-coder-14b-instruct-q8_0.gguf"
