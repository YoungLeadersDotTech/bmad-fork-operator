# <!-- Powered by BMAD™ Core -->
# Validate Agent Task
# Comprehensive validation of BMAD agent structure and dependencies

## Task Configuration
```yaml
task:
  name: Validate Agent
  id: validate-agent
  description: Validate agent structure, dependencies, and integration
  elicit: false
  input: Agent file path or agent ID
  output: Validation report with pass/fail status
```

## Validation Steps

### 1. Structure Validation
Check agent file has all required sections:
- [ ] ACTIVATION-NOTICE block present
- [ ] IDE-FILE-RESOLUTION block present
- [ ] REQUEST-RESOLUTION block present
- [ ] activation-instructions section with clear steps
- [ ] agent metadata section (name, id, title, icon, whenToUse)
- [ ] persona section (role, identity, core_principles)
- [ ] commands section with at least 'help' and 'exit'
- [ ] dependencies section (can be empty but must exist)

### 2. YAML Validation
Verify YAML structure is valid:
- [ ] YAML syntax is correct (no parsing errors)
- [ ] All required fields have values
- [ ] No duplicate keys in any section
- [ ] Proper indentation throughout
- [ ] String values properly quoted where needed

### 3. Uniqueness Checks
Ensure no conflicts with existing agents:
- [ ] agent.id is unique across all agents
- [ ] Slash command prefix doesn't conflict
- [ ] Agent name doesn't duplicate existing
- [ ] Commands don't overlap with global commands

### 4. Dependency Validation
Verify all dependencies exist:
- [ ] All listed tasks exist in tasks/ directory
- [ ] All listed templates exist in templates/ directory
- [ ] All listed checklists exist in checklists/ directory
- [ ] All listed data files exist in data/ directory
- [ ] All listed workflows exist in workflows/ directory
- [ ] No circular dependencies detected

### 5. Command Validation
Check command definitions:
- [ ] All commands have descriptions
- [ ] Parameter syntax is consistent {param}
- [ ] No duplicate command names
- [ ] Commands follow naming conventions (lowercase, hyphens)
- [ ] Required commands present (help, exit)

### 6. Activation Instructions Validation
Verify activation flow:
- [ ] Clear step-by-step instructions
- [ ] References to persona and agent sections
- [ ] Proper DO NOT warnings included
- [ ] Character/role maintenance instructions
- [ ] Command prefix (*) requirement stated

### 7. Integration Validation
Check framework integration:
- [ ] If core agent, included in agent-teams
- [ ] If expansion pack agent, config.yaml references it
- [ ] Web bundle compatibility verified
- [ ] IDE compatibility verified
- [ ] Token limits considered

### 8. Best Practices Check
Ensure follows BMAD conventions:
- [ ] Single responsibility principle
- [ ] Clear whenToUse differentiation
- [ ] Consistent naming conventions
- [ ] Proper BMAD™ Core header
- [ ] Appropriate emoji icon selected

## Validation Report Template
```
====================================
AGENT VALIDATION REPORT
====================================
Agent: [Name]
ID: [agent.id]
File: [file path]
Date: [timestamp]

STRUCTURE VALIDATION: [PASS/FAIL]
- Activation Notice: [✓/✗]
- IDE Resolution: [✓/✗]
- Request Resolution: [✓/✗]
- Required Sections: [✓/✗]

YAML VALIDATION: [PASS/FAIL]
- Syntax Valid: [✓/✗]
- Required Fields: [✓/✗]
- No Duplicates: [✓/✗]

UNIQUENESS: [PASS/FAIL]
- Unique ID: [✓/✗]
- Unique Prefix: [✓/✗]
- No Command Conflicts: [✓/✗]

DEPENDENCIES: [PASS/FAIL]
- Tasks: [X found / Y missing]
- Templates: [X found / Y missing]
- Checklists: [X found / Y missing]
- Data: [X found / Y missing]
- Workflows: [X found / Y missing]

COMMANDS: [PASS/FAIL]
- Total Commands: [number]
- Required Present: [✓/✗]
- No Duplicates: [✓/✗]

BEST PRACTICES: [SCORE/10]
- Single Responsibility: [✓/✗]
- Clear Differentiation: [✓/✗]
- Naming Conventions: [✓/✗]
- Documentation: [✓/✗]

OVERALL STATUS: [PASS/FAIL]

ISSUES FOUND:
[List any issues that need fixing]

RECOMMENDATIONS:
[Suggestions for improvement]
====================================
```

## Error Messages
- ERROR: Missing required section: [section name]
- ERROR: Duplicate agent ID detected: [id]
- ERROR: Slash command conflict with: [existing agent]
- ERROR: Dependency not found: [file path]
- ERROR: Invalid YAML syntax at line [X]
- ERROR: Circular dependency detected: [chain]

## Success Criteria
- All validation checks pass
- No errors or warnings
- Agent can be successfully activated
- Dependencies are resolvable
- No conflicts with existing agents