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

cb_admin
--------
`cb_admin` is fetched as a dependency. To install it, add the `cb_admin` to your root application as specified in the README.

Note
----
I've had to modify the cb_admin and ChicagoBoss source code a tiny bit to enable CB apps to work from the `deps` directory.
So this project is currently pulling my forks instead of the canonical repository. There is a pull request proposing a fix.

If the fix or a similar fix is accepted upstream, I will point rebar to the canonical repos.

Code away !
-----------

Visit the [Chicago Boss website](http://www.chicagoboss.org) for more information.
