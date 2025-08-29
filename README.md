# BMAD Custom Agent Builder & Framework Tools

> 🔧 **Create Your Own Custom BMAD Agents with 5-Phase Interactive Builder**  
> Created by [John Conneely](https://github.com/YoungLeadersDotTech)

## What is BMAD Custom Agent Builder?

BMAD Custom Agent Builder is a professional expansion pack that empowers you to create your own custom BMAD agents through a structured 5-phase interactive process. The centerpiece is the Fork Operator agent, which guides you through systematic elicitation to build perfect agents tailored to your specific needs.

### Key Features

- **🤖 5-Phase Agent Creation**: Interactive elicitation process guides you through Discovery → Capabilities → Personality → Integration → Refinement
- **📦 Expansion Pack Creator**: Build and validate custom expansion packs for domain-specific needs
- **✅ Comprehensive Validation**: Ensure your agents follow BMAD conventions and best practices
- **📚 Prompt Engineering Guide**: Advanced techniques and patterns for creating effective agents
- **🔧 Framework Tools**: Templates, validators, and utilities for extending BMAD

## Prerequisites

1. **BMAD Method Repository**: You need a local clone of BMAD
   - Original BMAD: `https://github.com/bmad-code-org/BMAD-METHOD.git`
   - Or any BMAD fork you're working with

2. **Directory Structure**: Recommended setup:
   ```
   ~/Projects/
   ├── BMAD-Method/          # Your BMAD fork or clone
   └── your-project/         # Your actual project
   ```

## Installation

### Method 1: Automatic Installation (Recommended)

1. **Clone this repository**:
   ```bash
   git clone https://github.com/YoungLeadersDotTech/bmad-fork-operator.git
   cd bmad-fork-operator
   ```

2. **Run the installation script**:
   ```bash
   ./install.sh /path/to/your/BMAD-Method
   ```
   Example:
   ```bash
   ./install.sh ~/Projects/BMAD-METHOD-TOAST
   ```

### Method 2: Manual Installation

1. **Clone this repository**:
   ```bash
   git clone https://github.com/YoungLeadersDotTech/bmad-fork-operator.git
   ```

2. **Copy as expansion pack**:
   ```bash
   cp -r bmad-fork-operator /path/to/BMAD-Method/expansion-packs/bmad-framework-tools
   ```

3. **Remove unnecessary files**:
   ```bash
   cd /path/to/BMAD-Method/expansion-packs/bmad-framework-tools
   rm -rf .git .gitignore install.sh
   ```

## Usage

Once installed, activate the Fork Operator in your AI assistant:

```
/bmadFramework:bmad-fork-operator
```

Note: The prefix `bmadFramework:` is the expansion pack namespace.

### Available Commands

The Fork Operator provides these commands (all require `*` prefix):

- `*help` - Show available commands
- `*build-agent` - Start interactive agent builder (5-phase elicitation)
- `*create-agent {type}` - Quick create (core|expansion|custom)
- `*create-expansion-pack {name}` - Initialize new expansion pack
- `*validate-agent {agent}` - Validate agent structure
- `*validate-pack {pack}` - Validate expansion pack
- `*create-workflow {type}` - Create new workflow
- `*create-task {name}` - Create reusable task
- `*create-template {type}` - Create new template

### Example: Creating Your Custom Agent

Want to create a specialized agent for your domain? Here's how easy it is:

1. **Activate the Builder**: `/bmadFramework:bmad-fork-operator`
2. **Start Creation**: `*build-agent`
3. **Follow the 5-Phase Process**:
   - **Discovery**: "I need a Security Analyst agent for vulnerability assessments"
   - **Capabilities**: Define commands like `*scan-code`, `*analyze-dependencies`, `*generate-report`
   - **Personality**: Set expertise level and communication style
   - **Integration**: Configure where it fits in your workflow
   - **Refinement**: Review and perfect your agent

**Result**: A fully functional, validated BMAD agent tailored to your exact needs!

## What's Included

### 📁 Core Components

- **Agent Definition** (`agents/bmad-fork-operator.md`)
  - Complete YAML-based agent configuration
  - Structured elicitation workflow
  - Comprehensive command set

### 📋 Tasks

- **build-agent-interactive.md**: 5-phase agent creation workflow
- **validate-agent.md**: Comprehensive agent validation
- **validate-expansion.md**: Expansion pack validation

### 📝 Templates

- **agent-tmpl.yaml**: Standard agent structure template
- **expansion-pack-tmpl.yaml**: Expansion pack configuration template

### 📚 Documentation

- **bmad-conventions.md**: Framework naming and structure conventions
- **agent-best-practices.md**: Comprehensive agent design guidelines
- **prompt-engineering-patterns.md**: Advanced prompt engineering techniques

### ⚙️ Configuration

- **config.yaml**: Expansion pack configuration
- **checklists/**: Validation checklists for agents

## How It Works

The Fork Operator uses structured elicitation to guide you through creating perfect BMAD agents:

```yaml
Phase 1: Discovery
  → Understand role and purpose
  
Phase 2: Capabilities  
  → Define commands and dependencies
  
Phase 3: Personality
  → Set communication style
  
Phase 4: Integration
  → Configure framework integration
  
Phase 5: Refinement
  → Review and validate
```

## Best Practices

1. **Always validate**: Run `*validate-agent` after creating agents
2. **Follow conventions**: Use the included documentation for guidance
3. **Test thoroughly**: Verify agents work in both IDE and web contexts
4. **Document well**: Include clear `whenToUse` descriptions
5. **Version properly**: Use semantic versioning for expansion packs

## Contributing

Contributions are welcome! Please:

1. Fork this repository
2. Create a feature branch
3. Make your improvements
4. Submit a pull request

## Attribution

Created by **John Conneely** | [GitHub](https://github.com/YoungLeadersDotTech)

This expansion pack enhances the [BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD) by the BMAD Code Organization.

## License

MIT License - See [LICENSE](LICENSE) file for details

## Support

- **Issues**: [Report bugs or request features](https://github.com/YoungLeadersDotTech/bmad-fork-operator/issues)
- **Discussions**: Share your agents and expansion packs
- **Updates**: Star the repo to get notified of updates

## Acknowledgments

Special thanks to:
- The BMAD Code Organization for creating the BMAD Method
- The BMAD community for continuous improvements
- All contributors and users of this tool

---

**Ready to customize BMAD?** Clone this repo and start building your perfect agents! 🚀