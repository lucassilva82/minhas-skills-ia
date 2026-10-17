#!/usr/bin/env bash
# Instala num Mac novo as ferramentas de IA do catálogo (README.md).
# Só baixa de fontes públicas (Homebrew e VS Code Marketplace).
# Não pede, não grava e não copia nenhuma senha, token ou chave.
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew não encontrado. Instale primeiro (passo 1 do README) e rode de novo."
  exit 1
fi

# Base dos projetos (Remotion e scripts de vídeo do appsoupmrr)
for f in node@20 python; do
  if brew list --formula "$f" >/dev/null 2>&1; then echo "✔ $f já instalado"; else brew install "$f"; fi
done

# cask do Homebrew : nome do app em /Applications
apps=(
  "claude:Claude"
  "visual-studio-code:Visual Studio Code"
  "google-chrome:Google Chrome"
  "recordly:Recordly"
)
for item in "${apps[@]}"; do
  cask="${item%%:*}"
  app="${item#*:}"
  if brew list --cask "$cask" >/dev/null 2>&1 || [ -d "/Applications/$app.app" ]; then
    echo "✔ $app já instalado"
  else
    echo "→ instalando $cask"
    brew install --cask "$cask"
  fi
done

if command -v code >/dev/null 2>&1; then
  code --install-extension anthropic.claude-code
else
  echo "Comando 'code' não encontrado: abra o VS Code e instale a extensão 'Claude Code' pela loja."
fi

cat <<'FIM'

Pronto. Falta fazer à mão:
  1. Abrir o Claude e entrar com a sua conta.
  2. Instalar o Claude in Chrome: https://claude.ai/chrome
  3. Abrir o Recordly e liberar Gravação de Tela, Microfone, Câmera e Acessibilidade
     em Ajustes do Sistema → Privacidade e Segurança.
  4. Em cada projeto, seguir o SETUP.md dele (no appsoupmrr, a seção 10 instala
     o Remotion, a voz e as skills do Remotion para os vídeos).
  5. Atualizar a coluna desta máquina no README.md.
FIM
