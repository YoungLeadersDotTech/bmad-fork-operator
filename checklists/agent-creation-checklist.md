# <!-- Powered by BMAD™ Core -->
# Agent Creation Checklist

## Pre-Creation
- [ ] Verify agent purpose is unique (no existing agent serves this role)
- [ ] Identify target audience (developers, PMs, analysts, etc.)
- [ ] List 3-5 core tasks the agent will perform
- [ ] Check for slash command conflicts

## Structure Requirements
- [ ] ACTIVATION-NOTICE block present
- [ ] IDE-FILE-RESOLUTION block included
- [ ] REQUEST-RESOLUTION block defined
- [ ] activation-instructions complete with all steps
- [ ] agent metadata (name, id, title, icon, whenToUse)
- [ ] persona section with role and core_principles
- [ ] commands section with help and exit
- [ ] dependencies section (even if empty)

## Validation
- [ ] YAML syntax valid
- [ ] Agent ID unique across framework
- [ ] Slash command doesn't conflict
- [ ] All dependencies exist
- [ ] Commands follow naming conventions
- [ ] whenToUse clearly differentiates

## Integration
- [ ] Added to appropriate team if core agent
- [ ] Config.yaml updated if expansion pack
- [ ] Documentation created
- [ ] Examples provided

## Testing
- [ ] Agent activates successfully
- [ ] All commands function
- [ ] Error handling works
- [ ] Persona maintained throughout