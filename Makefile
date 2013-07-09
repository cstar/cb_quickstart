
PREFIX:=./
DEST:=$(PREFIX)$(PROJECT)
ERL=erl
REBAR=./rebar
SESSION_CONFIG_DIR=priv/test_session_config
BOSS:=./deps/boss

.PHONY: get-deps deps

app: get-deps deps
	@(if ! echo "$(PROJECT)" | grep -qE '^[a-z]+[a-zA-Z0-9_@]*$$'; then echo "Project name should be a valid Erlang atom."; exit 1; fi)
	@$(REBAR) create template=skel dest=$(PREFIX) src=$(BOSS) appid=$(PROJECT) skip_deps=true 2> /dev/null

all:
	@$(REBAR) get-deps
	@$(REBAR) compile

boss:
	@$(REBAR) compile skip_deps=true

clean:
	@$(REBAR) clean

edoc:
	$(ERL) -pa ebin -pa deps/*/ebin -run boss_doc run -noshell -s init stop

get-deps:
	@$(REBAR) get-deps

deps:
	@$(REBAR) compile

test:
	@$(REBAR) skip_deps=true eunit

