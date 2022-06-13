### treesorter.nvim

## What
Trying to sort a multi-line-value map is difficult. Easier implementations of
this would use a multi-char delimiter and hope that a correct delimiter is
chosen. I think using treesitter is a more general solution to this and more
fun to learn.

Sort elements in a collection by their keys in collections based on the AST.

Want to support:
* sorting a map by its keys
* sorting an array by its elements
* sorting a switch statement by its cases

First goal is a proof of concept on typescript maps.
