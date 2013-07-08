Chicago Boss quickstart
=======================

Howto
-----

Clone the project and do the rebar dance

```console
APP=<your app name>
git clone --depth=1 https://github.com/cstar/cb_quickstart.git $APP
cd $APP
rm -Rf ./.git
make PROJECT=$APP
```
Note : the APP variable must be a valid erlang

Warning : the last command will display the following error message :

```console
ERROR: One or more files already exist on disk and were not generated:
  * ".//rebar.config"
  * ".//rebar"
  * ".//rebar.cmd"
```

Please ignore it.

Code away !