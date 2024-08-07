#!/bin/bash
#
# Install Visual Studio Code Ruby extensions
#
extensions=(
  # https://marketplace.visualstudio.com/items?itemName=aki77.rails-db-schema
  "aki77.rails-db-schema"
  # https://marketplace.visualstudio.com/items?itemName=kaiwood.endwise
  "kaiwood.endwise"
  # https://marketplace.visualstudio.com/items?itemName=KoichiSasada.vscode-rdbg
  "KoichiSasada.vscode-rdbg"
  # https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp
  "Shopify.ruby-lsp"
)
for extension in ${extensions[@]}; do
  code --install-extension $extension
done
