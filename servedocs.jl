# run in the directory of the project
moduledir = Symbol(last(split(pwd(), "/")))
@eval using $moduledir
using LiveServer; servedocs()
