# Minhas skills e ferramentas de IA

Catálogo das ferramentas, skills e extensões de IA que uso, separado por agente,
com o link para baixar cada uma e em quais máquinas já está instalada.

> Este repositório é **público**. Aqui só entram nomes, links e instruções.
> Nunca coloque tokens, chaves de API, senhas, `.netrc` ou arquivos de
> configuração com credenciais.

## Máquinas

| Máquina | Sistema | Inventário |
|---|---|---|
| iMac | macOS 27 (Apple Silicon) | ✅ feito em 17/10/2026 |
| MacBook | macOS | ⏳ falta conferir |
| Windows | Windows | ⏳ falta conferir |

Legenda das colunas de máquina: ✅ instalado · ❌ não instalado · ? não conferido

## Tabela geral por agente

### Claude (Anthropic)

| Ferramenta | Para que serve | Onde baixar | Como instalar | iMac | MacBook | Windows |
|---|---|---|---|---|---|---|
| Claude Desktop | App do Claude: chat, aba **Code** (Claude Code integrado), Cowork, artifacts | https://claude.ai/download | `brew install --cask claude` | ✅ | ? | ? |
| Claude Code (aba Code do Desktop) | Agente de programação: lê o projeto, edita arquivos e roda comandos | Vem junto com o Claude Desktop | Abrir o Claude Desktop → aba **Code** | ✅ | ? | ? |
| Claude Code para VS Code | Claude Code dentro do VS Code | https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code | `code --install-extension anthropic.claude-code` | ✅ | ? | ? |
| Claude Code CLI (terminal) | Claude Code no terminal (`claude`) | https://docs.claude.com/en/docs/claude-code/setup | `curl -fsSL https://claude.ai/install.sh \| bash` | ❌ | ? | ? |
| Claude in Chrome | Claude controla abas do Chrome (testar sites, preencher formulários) | https://claude.ai/chrome | Instalar a extensão pela Chrome Web Store e entrar com a conta | ✅ | ? | ? |
| Skills da conta (Anthropic) | `pdf`, `docx`, `xlsx`, `pptx`, `skill-creator`, `deep-research`, `schedule` e outras | Vêm com a conta claude.ai | Nada a instalar: aparecem sozinhas ao entrar com a conta | ✅ | ? | ? |
| Skills pessoais (`~/.claude/skills`) | Skills próprias, feitas por mim | — | Nenhuma criada ainda | — | ? | ? |
| Plugins do Claude Code | Pacotes de skills, comandos e hooks | Catálogo de plugins no Claude | Nenhum instalado ainda | — | ? | ? |
| Servidores MCP | Conectam o Claude a outros serviços | — | Nenhum configurado (Desktop e Code) | — | ? | ? |

### Gravação de tela e vídeo

| Ferramenta | Para que serve | Onde baixar | Como instalar | iMac | MacBook | Windows |
|---|---|---|---|---|---|---|
| Recordly | Gravar telas e fazer vídeos (zoom automático, cursor suave, fundos, webcam, exporta MP4/GIF) | https://github.com/webadderallorg/Recordly/releases | Mac: `brew install --cask recordly` · Windows: `Recordly-windows-x64.exe` dos releases | ✅ 1.4.0 | ? | ? |

### Editores e IDEs (onde as extensões de IA rodam)

| Ferramenta | Para que serve | Onde baixar | Como instalar | iMac | MacBook | Windows |
|---|---|---|---|---|---|---|
| Visual Studio Code | Editor; recebe a extensão do Claude Code | https://code.visualstudio.com | `brew install --cask visual-studio-code` | ✅ | ? | ? |
| Google Chrome | Navegador; recebe o Claude in Chrome | https://www.google.com/chrome | `brew install --cask google-chrome` | ✅ | ? | ? |

### Outros agentes (ainda não uso neste Mac)

| Ferramenta | Para que serve | Onde baixar | Como instalar | iMac | MacBook | Windows |
|---|---|---|---|---|---|---|
| OpenAI Codex CLI | Agente de programação da OpenAI | https://github.com/openai/codex | `brew install --cask codex` | ❌ | ? | ? |
| GitHub Copilot | Sugestões de código no VS Code | https://github.com/features/copilot | `code --install-extension GitHub.copilot` | ❌ | ? | ? |
| Gemini CLI | Agente do Google no terminal | https://github.com/google-gemini/gemini-cli | `brew install gemini-cli` | ❌ | ? | ? |

## Como instalar em um Mac novo

1. Instale o Homebrew (ele pede a senha do Mac, digitada por você):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Baixe este repositório:
   ```bash
   git clone https://github.com/lucassilva82/minhas-skills-ia.git ~/code/minhas-skills-ia
   ```
3. Rode o script, que só instala a partir dos links públicos acima:
   ```bash
   bash ~/code/minhas-skills-ia/instalar-mac.sh
   ```
4. Termine à mão (nada disso fica no repositório):
   - Abra o **Claude** e entre com a sua conta: as skills da conta aparecem sozinhas.
   - No Chrome, instale o **Claude in Chrome** em https://claude.ai/chrome.
   - Abra o **Recordly** e libere em *Ajustes do Sistema → Privacidade e Segurança*:
     **Gravação de Tela e Áudio do Sistema**, **Microfone**, **Câmera** (se usar
     webcam) e **Acessibilidade** (para o cursor).
5. Atualize a coluna da máquina nas tabelas acima e faça commit.

## Como instalar no Windows

A preencher depois de conferir o Windows. Pontos de partida:

- Claude Desktop: https://claude.ai/download
- Recordly: `Recordly-windows-x64.exe` em https://github.com/webadderallorg/Recordly/releases
- VS Code: https://code.visualstudio.com, e depois `code --install-extension anthropic.claude-code`

## Como manter este catálogo

- Instalou algo novo? Adicione uma linha na tabela do agente certo, com o link e o comando.
- Criou uma skill própria? Ela fica em `~/.claude/skills/<nome>/SKILL.md`. Se ela não tiver
  nada sigiloso, copie a pasta para `skills/` aqui e anote na tabela.
- Em cada máquina, troque o `?` por ✅ ou ❌.
