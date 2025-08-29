# <!-- Powered by BMAD™ Core -->
# Validate Expansion Pack Task
# Comprehensive validation of BMAD expansion pack structure and consistency

## Task Configuration
```yaml
task:
  name: Validate Expansion Pack
  id: validate-expansion
  description: Validate expansion pack structure, dependencies, and integration
  elicit: false
  input: Expansion pack directory path
  output: Validation report with pass/fail status
```

## Validation Steps

### 1. Directory Structure Validation
Check required directories exist:
- [ ] config.yaml in root
- [ ] agents/ directory
- [ ] tasks/ directory
- [ ] templates/ directory
- [ ] checklists/ directory
- [ ] data/ directory
- [ ] workflows/ directory
- [ ] agent-teams/ directory
- [ ] README.md file

### 2. Config.yaml Validation
Verify configuration file:
- [ ] Valid YAML syntax
- [ ] Required fields: name, version, description, slashPrefix
- [ ] Version follows semver (X.Y.Z)
- [ ] Unique slashPrefix across all packs
- [ ] Valid agents list with IDs and files
- [ ] Teams defined with descriptions

### 3. Agent Validation
For each agent in the pack:
- [ ] Agent file exists at specified path
- [ ] Agent ID matches config declaration
- [ ] Slash command matches config
- [ ] No ID conflicts with other agents
- [ ] All agent dependencies are available
- [ ] Follows agent structure requirements

### 4. Resource Validation
Check all pack resources:
- [ ] All tasks have proper structure
- [ ] Templates follow naming convention (*-tmpl.yaml/md)
- [ ] Checklists have clear items
- [ ] Data files are well-formatted
- [ ] Workflows reference valid agents/tasks

### 5. Dependency Resolution
Verify internal and external dependencies:
- [ ] All internal references resolve within pack
- [ ] External dependencies are declared
- [ ] No circular dependencies
- [ ] Core version compatibility met
- [ ] Required packs available

### 6. Team Configuration
Validate agent-teams files:
- [ ] Each team file is valid YAML
- [ ] All referenced agents exist
- [ ] Team names are unique
- [ ] Proper team metadata included

### 7. Integration Checks
Verify pack integration:
- [ ] IDE compatibility flags correct
- [ ] Web compatibility flags correct
- [ ] MCP/ACLI requirements declared
- [ ] No conflicts with core functionality

### 8. Naming Conventions
Check follows BMAD standards:
- [ ] Pack name: bmad-{domain}-{specificity}
- [ ] File names use hyphens, not underscores
- [ ] Consistent casing throughout
- [ ] Proper file extensions

## Validation Report Template
```
====================================
EXPANSION PACK VALIDATION REPORT
====================================
Pack: [Name]
Version: [X.Y.Z]
Path: [directory path]
Date: [timestamp]

STRUCTURE VALIDATION: [PASS/FAIL]
- Config File: [✓/✗]
- Required Directories: [X/8 present]
- README Present: [✓/✗]

CONFIG VALIDATION: [PASS/FAIL]
- Valid YAML: [✓/✗]
- Required Fields: [✓/✗]
- Unique Prefix: [✓/✗]
- Version Format: [✓/✗]

AGENTS: [PASS/FAIL]
- Total Agents: [number]
- All Valid: [✓/✗]
- No Conflicts: [✓/✗]

RESOURCES: [PASS/FAIL]
- Tasks: [X valid / Y invalid]
- Templates: [X valid / Y invalid]
- Checklists: [X valid / Y invalid]
- Data: [X valid / Y invalid]
- Workflows: [X valid / Y invalid]

DEPENDENCIES: [PASS/FAIL]
- Internal Resolved: [✓/✗]
- External Declared: [✓/✗]
- No Circular: [✓/✗]

TEAMS: [PASS/FAIL]
- Team Files: [X valid / Y invalid]
- Agents Referenced: [✓/✗]

INTEGRATION: [PASS/FAIL]
- IDE Compatible: [✓/✗]
- Web Compatible: [✓/✗]
- Requirements Met: [✓/✗]

NAMING CONVENTIONS: [PASS/FAIL]
- Pack Name: [✓/✗]
- File Names: [✓/✗]
- Consistency: [✓/✗]

OVERALL STATUS: [PASS/FAIL]

ISSUES FOUND:
[List any issues that need fixing]

WARNINGS:
[Non-critical issues]

RECOMMENDATIONS:
[Suggestions for improvement]

COMPATIBILITY:
- Core Version Required: [version]
- Works With Packs: [list]
- Conflicts With: [list if any]
====================================
```

## Error Messages
- ERROR: Missing required directory: [name]
- ERROR: Invalid config.yaml: [specific issue]
- ERROR: Agent not found: [agent file]
- ERROR: Duplicate agent ID: [id]
- ERROR: Circular dependency: [chain]
- ERROR: Incompatible core version
- ERROR: Resource not found: [path]
- WARNING: Non-standard naming: [file]
- WARNING: Missing documentation: [component]

## Success Criteria
- All validation checks pass
- No errors in report
- Pack can be loaded successfully
- All agents activate properly
- Resources are accessible
- No conflicts with existing packs