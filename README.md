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
| ui-ux-pro-max | Regras de UI/UX (acessibilidade, alvos de toque, hierarquia); base do DESIGN.md do SouPMRR | https://github.com/nextlevelbuilder/ui-ux-pro-max-skill | Global: `/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill` e `/plugin install ui-ux-pro-max@ui-ux-pro-max-skill` no Claude Code. No appsoupmrr já vem no repositório (`.claude/skills/ui-ux-pro-max`) | ✅ no appsoupmrr | ? | ? |
| Skills do Remotion (`remotion-dev/skills`) | Boas práticas de vídeo em código: animação, legendas, transições, círculos desenhados à mão | https://github.com/remotion-dev/skills | Por projeto: no appsoupmrr, baixadas sozinhas no início da sessão (gancho em `.claude/settings.json`) ou por `tools/video-tutorial/scripts/instalar-skills.sh` (o `npx skills add remotion-dev/skills` oficial exige Node 22+) | ✅ no appsoupmrr | ? | ? |

### Gravação de tela e vídeo

| Ferramenta | Para que serve | Onde baixar | Como instalar | iMac | MacBook | Windows |
|---|---|---|---|---|---|---|
| Recordly | Gravar telas e fazer vídeos (zoom automático, cursor suave, fundos, webcam, exporta MP4/GIF) | https://github.com/webadderallorg/Recordly/releases | Mac: `brew install --cask recordly` · Windows: `Recordly-windows-x64.exe` dos releases | ✅ 1.4.0 | ? | ? |
| Remotion | Vídeo feito em código (React): usado nos tutoriais do SouPMRR | https://www.remotion.dev | Vem pelo `npm install` do projeto (`tools/video-tutorial` no appsoupmrr, versão 4.0.531) | ✅ | ? | ? |
| edge-tts | Voz neural pt-BR da Microsoft, sem conta; voz escolhida: `pt-BR-ThalitaMultilingualNeural` | https://github.com/rany2/edge-tts | `pip install edge-tts` (o `preparar.sh` do projeto instala num `.venv`) | ✅ 7.3.1 | ? | ? |
| Voicebox | Estúdio de voz local (Kokoro, Qwen3-TTS, clonagem). Testado e **recusado** para pt-BR: robótico e com sotaque de Portugal | https://github.com/jamiepine/voicebox/releases | DMG `Voicebox_0.5.0_aarch64.dmg` (não precisa instalar) | ✅ 0.5.0 | ? | ? |
| Node.js 20 e Python 3 | Base do Remotion e dos scripts de vídeo | https://brew.sh | `brew install node@20 python` (o `instalar-mac.sh` instala) | ✅ | ? | ? |

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

## Projetos

Cada projeto descreve no próprio repositório o que precisa. Ao clonar, o Claude
lê o `CLAUDE.md` e segue o `SETUP.md`.

| Projeto | Onde está o que instalar |
|---|---|
| appsoupmrr (SouPMRR) | `CLAUDE.md`: arquivo geral, carrega todos os documentos e lista as skills a instalar |

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
