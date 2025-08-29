# <!-- Powered by BMAD™ Core -->
# Agent Best Practices for BMAD Framework

## Agent Design Principles

### 1. Single Responsibility
Each agent should focus on one domain or expertise area:
- ✅ GOOD: "Security Analyst" - focuses on security analysis
- ❌ BAD: "Developer Helper" - too broad and vague
- ✅ GOOD: "API Designer" - specific to API design
- ❌ BAD: "Everything Agent" - no clear focus

### 2. Clear Differentiation
Agents must have distinct use cases:
```yaml
whenToUse: "Use for security vulnerability analysis and threat assessment. NOT for general code review or development tasks."
```

### 3. Consistent Personality
Maintain character throughout interaction:
- Define clear communication style
- Set expertise level appropriately
- Stay in character until exit
- Use consistent terminology

## Activation Instructions Best Practices

### Required Steps
Always include these in order:
1. Read entire agent file
2. Adopt defined persona
3. Load core configuration if exists
4. Greet with name and role
5. Display available commands (*help)
6. Await user commands

### Clear Warnings
Always include DO NOT instructions:
```yaml
- DO NOT: Load other agent files during activation
- DO NOT: Execute tasks without user command
- DO NOT: Break character or switch personas
```

## Command Design Guidelines

### Naming Conventions
- Use action-object pattern: `create-report`, `analyze-code`
- Keep commands short: max 2-3 words
- Use hyphens, not underscores
- Be descriptive but concise

### Required Commands
Every agent MUST have:
```yaml
commands:
  - help: "Show available commands in numbered list"
  - exit: "Exit agent mode (with confirmation)"
```

### Parameter Handling
```yaml
commands:
  - "create-doc {template}": "Create document from template"
  - "analyze {file} {depth}": "Analyze file with specified depth"
```
- Use descriptive parameter names
- Document optional vs required
- Provide defaults where sensible

## Dependency Management

### Organization
Structure dependencies logically:
```yaml
dependencies:
  tasks:
    - core-task-1.md
    - core-task-2.md
  templates:
    - domain-tmpl.yaml
  checklists:
    - validation-checklist.md
  data:
    - knowledge-base.md
  workflows:
    - complex-workflow.md
```

### Lazy Loading
- Never pre-load dependencies
- Load only when command requires
- Release after use if possible
- Document heavy dependencies

## Persona Development

### Effective Personas
```yaml
persona:
  role: "Expert API Designer & REST Architecture Specialist"
  identity: "Master of API design patterns, versioning strategies, and REST best practices"
  core_principles:
    - "API-first design methodology"
    - "Backwards compatibility focus"
    - "Security by design"
    - "Clear documentation standards"
    - "Process (*) commands immediately"
```

### Communication Styles

#### Technical Expert
- Use precise technical terminology
- Provide detailed explanations
- Reference specifications and standards
- Assume technical audience

#### Friendly Mentor
- Explain concepts clearly
- Use analogies and examples
- Encourage questions
- Patient with beginners

#### Professional Consultant
- Business-focused language
- Cost-benefit considerations
- Strategic recommendations
- Executive summaries

## Error Handling Patterns

### Graceful Failures
```yaml
# Good error handling
"If template not found:
  1. List available templates
  2. Ask user to choose
  3. Suggest similar options"

# Bad error handling
"ERROR: Template not found. Exiting."
```

### User Guidance
Always provide next steps:
- What went wrong
- Why it happened
- How to fix it
- Alternative approaches

## Interaction Patterns

### Progressive Disclosure
Start simple, add complexity as needed:
1. Show basic commands first
2. Reveal advanced options on request
3. Group related commands
4. Provide examples for complex operations

### Confirmation Patterns
For destructive operations:
```yaml
"Are you sure you want to delete X? (yes/no)"
"This will modify Y files. Continue? (y/n)"
```

### Numbered Lists
Always use for multiple options:
```
Available templates:
1. API Documentation Template
2. Security Report Template
3. Architecture Decision Record
4. Custom Template

Type number to select or 'cancel' to abort:
```

## Integration Considerations

### IDE vs Web Compatibility
```yaml
# IDE-specific features
ide_features:
  - File system access
  - Direct code editing
  - Terminal commands

# Web-specific features
web_features:
  - Limited file access
  - Browser-based editing
  - API-based operations
```

### Token Limitations
- Keep responses concise in web mode
- Batch operations when possible
- Summarize long outputs
- Provide "more" option for details

## Testing Strategies

### Command Coverage
Test matrix for each command:
- Valid inputs
- Invalid inputs
- Edge cases
- Missing parameters
- Extreme values

### Persona Consistency
Verify character maintenance:
- Initial greeting matches persona
- Responses align with expertise
- Terminology stays consistent
- Error messages fit character

### Dependency Validation
Check all dependencies:
- Files exist at paths
- Circular dependencies avoided
- Version compatibility
- Load performance

## Performance Optimization

### Response Time
- Minimize dependency loading
- Cache frequently used data
- Stream long outputs
- Provide progress indicators

### Memory Usage
- Release unused resources
- Avoid loading entire files
- Use pagination for lists
- Clear temporary data

## Documentation Standards

### Agent README Template
```markdown
# [Agent Name]

## Purpose
Brief description of agent's role

## When to Use
Clear use cases and scenarios

## Commands
- `command1` - Description
- `command2 {param}` - Description

## Examples
Common usage patterns

## Dependencies
Required resources and files

## Integration
How to add to teams/packs
```

### Inline Documentation
```yaml
# This command performs X by doing Y
- complex-command: "User-friendly description"
```

## Security Best Practices

### Input Validation
- Sanitize all user inputs
- Validate file paths
- Check parameter bounds
- Prevent injection attacks

### Access Control
- Respect file permissions
- Limit scope of operations
- Never expose secrets
- Audit sensitive operations

## Version Management

### Breaking Changes
Mark clearly in version:
- MAJOR version for breaking changes
- Document migration path
- Provide compatibility layer
- Deprecation warnings

### Feature Additions
- MINOR version for new features
- Maintain backwards compatibility
- Document new capabilities
- Update examples

## Common Pitfalls to Avoid

### Over-Engineering
❌ Creating 50 commands when 10 suffice
✅ Focus on core functionality

### Under-Specifying
❌ Vague personas like "Helper"
✅ Specific roles like "Database Migration Specialist"

### Dependency Sprawl
❌ Requiring 20 files for basic operation
✅ Minimal dependencies, lazy loaded

### Command Confusion
❌ Similar commands: `make-doc`, `create-doc`, `build-doc`
✅ One clear command: `create-doc`

### Poor Error Messages
❌ "Error occurred"
✅ "Template 'api-spec' not found. Available templates: [list]"

## Success Metrics

### Good Agent Indicators
- Users understand purpose immediately
- Commands are intuitive
- Errors are rare and helpful
- Performance is responsive
- Integration is seamless

### Warning Signs
- Users ask "what does this do?"
- Commands need explanation
- Frequent errors or confusion
- Slow response times
- Integration conflicts