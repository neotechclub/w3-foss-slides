#!/usr/bin/bash

echo "Fetching Kroki.io plugins"
curl https://gist.githubusercontent.com/yhatt/8931dd98769bcc1c5b4b92fd1234a190/raw/94839633ae9665f688425843cbcb3e8778d2b848/marp.config.js -o build/marp.config.js
curl https://gist.githubusercontent.com/yhatt/8931dd98769bcc1c5b4b92fd1234a190/raw/94839633ae9665f688425843cbcb3e8778d2b848/kroki-plugin.js -o build/kroki-plugin.js

echo "Building Website"
npx @marp-team/marp-cli@latest -c build/marp.config.js --html README.md -o build/index.html
