Chicago Boss quickstart
=======================

Howto
-----
Easy muffin, copy paste the following:

```console
APP=<your app name>
mkdir $APP
cd $APP
curl -L https://github.com/cstar/cb_quickstart/archive/v1.1.tar.gz | tar xzf - -C . --strip-components=1
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
`cb_admin` is fetched as a dependency. To install :
Add to rebar.config 
```erlang
{deps, [
  % ...
  {cb_admin, ".*", {git, "git://github.com/evanmiller/cb_admin.git", "HEAD"}}
]}.
```

And add something like this to your boss.config:
    [{boss, [
        {applications, [cb_admin, ...]},
        ...
    ]},
    {cb_admin, [
        {allow_ip_blocks, ["127.0.0.1"]},
        {base_url, "/admin"}
    ]}].

Code away !
-----------

Visit the [Chicago Boss website](http://www.chicagoboss.org) for more information.
