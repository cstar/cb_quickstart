Chicago Boss quickstart
=======================

Howto
-----

Clone the project and do the rebar dance

```console
APP=<your app name>
mkdir $APP
cd $APP
curl -L https://github.com/cstar/cb_quickstart/archive/v1.0.tar.gz | tar xzf - -C . --strip-components=1
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

Code away !
-----------

Visit the [Chicago Boss website](http://www.chicagoboss.org) for more information.
