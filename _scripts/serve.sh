#!/usr/bin/env bash
open http://127.0.0.1:4000
bundle exec jekyll serve -w --drafts --config _config.yml,_devConfig.yml
