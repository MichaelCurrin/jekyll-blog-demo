@echo off

SET 	JEKYLL_ENV=production bundle exec jekyll build --trace

IF /I "%1"=="default" GOTO default
IF /I "%1"=="h help" GOTO h help
IF /I "%1"=="install" GOTO install
IF /I "%1"=="upgrade" GOTO upgrade
IF /I "%1"=="s serve" GOTO s serve
IF /I "%1"=="build" GOTO build
GOTO error

:default
	CALL make.bat install
	GOTO :EOF

:h help
	@grep '^[a-z]' Makefile
	GOTO :EOF

:install
	bundle config set --local path vendor/bundle
	bundle install
	GOTO :EOF

:upgrade
	bundle update
	GOTO :EOF

:s serve
	bundle exec jekyll serve --trace --livereload
	GOTO :EOF

:build
	JEKYLL_ENV=production bundle exec jekyll build --trace
	GOTO :EOF

:error
	IF "%1"=="" (
		ECHO make: *** No targets specified and no makefile found.  Stop.
	) ELSE (
		ECHO make: *** No rule to make target '%1%'. Stop.
	)
	GOTO :EOF
