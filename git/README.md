<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Git Configuration](#git-configuration)
  - [Global User `.gitconfig`](#global-user-gitconfig)
  - [Global User Git Attributes - `gitattributes`](#global-user-git-attributes---gitattributes)
  - [Global User Git Ignore - `gitignore`](#global-user-git-ignore---gitignore)
  - [Related](#related)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Git Configuration

My custom work profile's Git Configuration files.

## Global User `.gitconfig`

- See [.gitconfig](.gitconfig):

```bash
[user]
	name = Jimmy Briggs
	email = jimmy.briggs@pwc.com
	signingKey = 370C8AEB9558B23956F43908F129716EB9D81990
[default]
	protocol = ssh
[gpg]
	program = C:\\Program Files (x86)\\GnuPG\\bin\\gpg.exe
[commit]
	gpgSign = true
[tag]
	forceSignAnnotated = true
[color]
	ui = auto
[core]
	longpaths = true
	excludesfile = ~/.gitignore
	attributesfile = ~/.gitattributes
	symlinks = true
	safecrlf = true
	untrackedCache = true
[init]
	defaultBranch = main
[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
[submodule]
	recurse = true
[url "git@github.com:"]
    insteadOf = "gh:"
    pushInsteadOf = "github:"
    pushInsteadOf = "git://github.com/"
[url "git://github.com/"]
    insteadOf = "github:"
[url "git@gist.github.com:"]
    insteadOf = "gst:"
    pushInsteadOf = "gist:"
    pushInsteadOf = "git://gist.github.com/"
[url "git://gist.github.com/"]
    insteadOf = "gist:"
```

## Global User Git Attributes - `gitattributes`

- See [.gitattributes](.gitattributes)

```bash
# git-crypt
* !filter !diff
*.gpg binary
git-crypt-secret filter=git-crypt diff=git-crypt
*secret* filter=git-crypt diff=git-crypt
*.key filter=git-crypt diff=git-crypt

# blackbox
**/blackbox-admins.txt text eol=lf
**/blackbox-files.txt text eol=lf

# gitHub-linguist
# ignore HTML, and JS
*.html linguist-vendored
*.js linguist-vendored
```

## Global User Git Ignore - `gitignore`

- See [.gitignore](.gitignore):

```bash
# Config
config.yml
config.yaml

# Zips
*.zip

# Windows OS
Thumbs.db
Thumbs.db:encryptable
ehthumbs.db
ehthumbs_vista.db
*.stackdump
[Dd]esktop.ini
$RECYCLE.BIN/
*.cab
*.msi
*.msix
*.msm
*.msp
*.lnk
Thumbs.db
*.obj
*.exe
*.pdb
*.user
*.aps
*.pch
*.vspscc
*_i.c
*_p.c
*.ncb
*.suo
*.tlb
*.tlh
*.bak
*.cache
*.ilk
*.log
*.dll
*.lib
*.sbr

# MacOS
.DS_Store
.AppleDouble
.LSOverride
ehthumbs.db
Thumbs.db
*.swp
.*.swp
*~
*.out
.idea
.history

# PowerShell
*.dll

# R
.Rproj.user
.Rproj.user/
.Rhistory
.Renviron
.Rapp.history
.Rdata
.Ruserdata
.httr-oauth
*-Ex.R
/*.tar.gz
/*.Rcheck/
vignettes/*.html
vignettes/*.pdf
*_cache/
/cache/
*.utf8.md
*.knit.md
/*_files/

# Node.js
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
report.[0-9]*.[0-9]*.[0-9]*.[0-9]*.json
pids
*.pid
*.seed
*.pid.lock
lib-cov
coverage
*.lcov
.nyc_output
.grunt
bower_components
.lock-wscript
build/Release
node_modules/
jspm_packages/
typings/
*.tsbuildinfo
.npm
.eslintcache
.rpt2_cache/
.rts2_cache_cjs/
.rts2_cache_es/
.rts2_cache_umd/
.node_repl_history
*.tgz
.yarn-integrity

# Misc
.env
.env.test
.env*.local
.cache
.parcel-cache
.next
.nuxt
dist
.cache/
.vuepress/dist
.serverless/
.fusebox/
.dynamodb/
.tern-port
.vscode-test

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST
*.manifest
*.spec
pip-log.txt
pip-delete-this-directory.txt
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/
pytestdebug.log
*.mo
*.pot
local_settings.py
db.sqlite3
db.sqlite3-journal
instance/
.webassets-cache
.scrapy
docs/_build/
doc/_build/
target/
.ipynb_checkpoints
profile_default/
ipython_config.py
.python-version
__pypackages__/
celerybeat-schedule
celerybeat.pid
*.sage.py
.venv
env/
venv/
ENV/
env.bak/
venv.bak/
pythonenv*
.spyderproject
.spyproject
.ropeproject
/site
.mypy_cache/
.dmypy.json
dmypy.json
.pyre/
.pytype/
.prof
```



## Related

- [SSH](../ssh/)
- [GPG](../gpg/)
- [gh](../gh/)
- [wsl/git](../wsl/git/)
- [git-crypt](../git-crypt/)
- [git-extras](../git-extras)

