# <!-- Powered by BMAD™ Core -->
# BMAD Framework Conventions

## Naming Conventions

### Files and Directories
- Use lowercase with hyphens: `agent-name.md`, `task-name.md`
- Templates end with `-tmpl`: `prd-tmpl.yaml`, `story-tmpl.md`
- Checklists end with `-checklist`: `architect-checklist.md`
- Expansion packs: `bmad-{domain}-{specificity}`
  - Examples: `bmad-security-scanner`, `bmad-devops-kubernetes`

### Agent Identifiers
- Agent ID: lowercase with hyphens: `security-analyst`, `api-designer`
- Slash commands: short, memorable: `/security`, `/api`, `/bmad-master`
- Agent names: Title Case: "Security Analyst", "API Designer"

### Commands
- Use lowercase with hyphens: `create-doc`, `validate-agent`
- Parameters in braces: `{template}`, `{agent}`
- Action-object pattern: `create-story`, `update-config`, `validate-pack`

## Directory Structure

### Core BMAD Structure
```
BMAD-METHOD/
├── agents/           # Core agent definitions
├── tasks/           # Reusable task workflows
├── templates/       # Document templates
├── checklists/      # Validation checklists
├── data/           # Knowledge bases and data
├── workflows/       # Multi-step workflows
├── agent-teams/     # Team configurations
├── bmad-core/      # Core configuration
│   └── core-config.yaml
└── expansion-packs/ # Optional expansion packs
```

### Expansion Pack Structure
```
expansion-pack-name/
├── config.yaml      # Pack configuration
├── agents/         # Pack-specific agents
├── tasks/          # Pack-specific tasks
├── templates/      # Pack-specific templates
├── checklists/     # Pack-specific checklists
├── data/          # Pack-specific data
├── workflows/      # Pack-specific workflows
├── agent-teams/    # Team configurations
└── README.md       # Documentation
```

## Agent Structure Requirements

### Required Sections
1. **ACTIVATION-NOTICE**: Warning about self-contained configuration
2. **IDE-FILE-RESOLUTION**: How to resolve file paths
3. **REQUEST-RESOLUTION**: How to match user requests
4. **activation-instructions**: Step-by-step activation
5. **agent**: Metadata (name, id, title, icon, whenToUse)
6. **persona**: Role and identity definition
7. **commands**: Available commands with descriptions
8. **dependencies**: Required resources

### Command Conventions
- Always include `help` command
- Always include `exit` command
- Commands require `*` prefix when used
- Parameters use `{param}` syntax
- Descriptions should be clear and actionable

## YAML Formatting

### Indentation
- Use 2 spaces for indentation
- Never use tabs
- Maintain consistent indentation levels

### Lists
```yaml
items:
  - item1
  - item2
  - item3
```

### Multi-line Strings
```yaml
description: |
  This is a multi-line
  description that preserves
  line breaks
```

## Version Management

### Semantic Versioning
- Format: `MAJOR.MINOR.PATCH`
- MAJOR: Breaking changes
- MINOR: New features, backwards compatible
- PATCH: Bug fixes

### Version Compatibility
```yaml
dependencies:
  core_version: ">=4.0.0"  # Minimum version
  required_packs:
    - name: "bmad-security"
      version: "^2.1.0"   # Compatible with 2.x.x
```

## Task Structure

### Elicitation Tasks
```yaml
task:
  name: "Task Name"
  id: "task-id"
  elicit: true  # Requires user interaction
  output: "What this produces"
```

### Non-Elicitation Tasks
```yaml
task:
  name: "Task Name"
  id: "task-id"
  elicit: false
  input: "What it needs"
  output: "What it produces"
```

## Documentation Standards

### Headers
- Use `#` for main title
- Include `<!-- Powered by BMAD™ Core -->` comment
- Provide clear description after title

### Code Blocks
- Use triple backticks with language identifier
- YAML blocks for configuration
- Markdown for documentation
- Shell for commands

### Lists
- Use `-` for unordered lists
- Use numbers for ordered steps
- Use `- [ ]` for checklists

## Integration Requirements

### Slash Commands
- Must be unique across all agents
- Should be memorable and intuitive
- Avoid conflicts with existing commands
- Register in config.yaml for expansion packs

### Dependencies
- Always use relative paths from root
- Check existence before referencing
- Declare external dependencies explicitly
- Avoid circular dependencies

## Best Practices

### Agent Design
1. Single responsibility principle
2. Clear differentiation from other agents
3. Comprehensive command set
4. Well-defined persona
5. Explicit activation instructions

### Error Handling
1. Validate inputs before processing
2. Provide clear error messages
3. Suggest corrections when possible
4. Fail gracefully

### User Experience
1. Immediate feedback on commands
2. Numbered lists for options
3. Clear prompts for input
4. Progressive disclosure of complexity

## Security Considerations

### File Access
- Only access declared dependencies
- Validate file paths before reading
- Never expose sensitive information
- Respect user privacy

### Command Execution
- Validate command parameters
- Sanitize user inputs
- Prevent injection attacks
- Limit scope of operations

## Testing Guidelines

### Agent Testing
1. Test all commands
2. Verify dependency resolution
3. Check activation flow
4. Validate error handling

### Pack Testing
1. Test in isolation
2. Test with other packs
3. Verify no conflicts
4. Check all resources load

## Migration Guidelines

### Version Updates
1. Document breaking changes
2. Provide migration scripts
3. Update version numbers
4. Test backwards compatibility

### Deprecation
1. Mark deprecated features clearly
2. Provide migration timeline
3. Suggest alternatives
4. Maintain for transition period