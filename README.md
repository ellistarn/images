# Overview
These images are built and maintained for debugging on Kubernetes. Feel free to consume or contribute under the Apache 2.0 License.

# Install
```
# Add this to your ~/.bashrc to permanently add these aliases to your environment
source <(curl -s https://raw.githubusercontent.com/ellistarn/images/main/debug/aliases)
```
# Usage
```
# open a shell
kdebug

# run a command
kdebug echo foo
kdebug ping 8.8.8.8

# cleanup old debug pods
kdebugcleanup
