# BMAD Fork Operator

> 🔧 **The Ultimate BMAD Framework Customization Agent**  
> Created by [John Conneely](https://github.com/YoungLeadersDotTech)

## What is BMAD Fork Operator?

The BMAD Fork Operator is a powerful agent that transforms BMAD from a methodology into a fully customizable framework. It provides structured workflows for creating new agents, expansion packs, and framework customizations through systematic elicitation and validation.

### Key Features

- **🤖 Interactive Agent Builder**: 5-phase structured elicitation for creating perfect agents
- **📦 Expansion Pack Creator**: Build and validate custom expansion packs
- **✅ Comprehensive Validation**: Ensure agents and packs follow BMAD conventions
- **📚 Best Practices Built-in**: Includes extensive documentation on prompt engineering and agent design
- **🔄 Framework Management**: Tools for maintaining and syncing BMAD forks

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

### Method 1: Using BMAD Master (Recommended)

1. **Clone this repository** to get the installation files:
   ```bash
   git clone https://github.com/YoungLeadersDotTech/bmad-fork-operator.git
   cd bmad-fork-operator
   ```

2. **Navigate to your BMAD fork directory**:
   ```bash
   cd ~/Projects/BMAD-Method  # Or wherever your BMAD fork is
   ```

3. **Activate BMAD Master** in your AI assistant and run:
   ```
   /bmad-master
   ```

4. **When BMAD Master is active**, provide this prompt:
   ```
   Please install the BMAD Fork Operator from [path-to-cloned-repo]/installation/fork-operator-prompt.md
   ```

### Method 2: Manual Installation

1. **Clone this repository**:
   ```bash
   git clone https://github.com/YoungLeadersDotTech/bmad-fork-operator.git
   cd bmad-fork-operator
   ```

2. **Run the installation script**:
   ```bash
   ./install.sh /path/to/your/BMAD-Method
   ```

3. **Or manually copy files**:
   ```bash
   # Copy agent file
   cp agents/bmad-fork-operator.md /path/to/BMAD-Method/agents/

   # Copy tasks
   cp tasks/*.md /path/to/BMAD-Method/tasks/

   # Copy templates
   cp templates/*.yaml /path/to/BMAD-Method/templates/

   # Copy data files
   cp data/*.md /path/to/BMAD-Method/data/

   # Copy team configuration
   cp agent-teams/team-framework.yaml /path/to/BMAD-Method/bmad-core/agent-teams/
   ```

## Usage

Once installed, activate the Fork Operator in your AI assistant:

```
/bmad-fork-operator
```

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

### Example: Creating a New Agent

1. Activate Fork Operator: `/bmad-fork-operator`
2. Run: `*build-agent`
3. Answer the structured questions:
   - Phase 1: Define role and purpose
   - Phase 2: Specify capabilities and commands
   - Phase 3: Set personality and communication style
   - Phase 4: Configure integration settings
   - Phase 5: Review and refine

The Fork Operator will generate a complete, validated agent file ready for use!

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

### 👥 Team Configuration

- **team-framework.yaml**: Agent team for framework customization

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

This tool enhances the [BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD) by the BMAD Code Organization.

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