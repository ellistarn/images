# Overview
These images are built and maintained for debugging on Kubernetes. Feel free to consume or contribute under the Apache 2.0 License.

# Aliases
```
alias kdebug='kubectl run -it --image ellistarn/debug $USER-$RANDOM'
alias kdebugcleanup='kubectl get pods -n default --no-headers=true | cut -f1 -d " " | xargs kubectl delete pods'
```
# Usage
```
# open a shell
kdebug

# run a command
kdebug echo foo
kdebug ping 8.8.8.8
kdebug
