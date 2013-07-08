Chicago Boss quickstart
=======================

Howto
-----

Clone the project and do the rebar dance

```console
APP=<your app name>
git clone --depth=1 https://github.com/cstar/cb_quickstart.git $APP
cd $APP
# rm -Rf ./.git #this command is commented, because I don't want to be held responsible for deleting your git history
make PROJECT=$APP
```
Note : the APP variable must be a valid erlang term. (Roughly : downcase characters and '_', no digits first)

Warning : the last command will display the following error message :

```console
ERROR: One or more files already exist on disk and were not generated:
  * ".//rebar.config"
  * ".//rebar"
  * ".//rebar.cmd"
```

Please ignore it.

Code away !
-----------

Visit the [Chicago Boss website](http://www.chicagoboss.org) for more information.
