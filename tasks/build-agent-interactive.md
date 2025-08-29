# <!-- Powered by BMAD™ Core -->
# Build Agent Interactive Task
# Interactive structured elicitation workflow for creating perfect BMAD agents

## Task Configuration
```yaml
task:
  name: Build Agent Interactive
  id: build-agent-interactive
  description: Systematic agent creation through structured elicitation
  elicit: true
  output: New agent file ready for deployment
```

## Phase 1: Discovery
### Purpose: Understand the agent's core purpose and role

**Questions to ask user:**
1. What specific role or expertise should this agent have? 
   - Examples: 'Security Analyst', 'API Designer', 'Data Migration Specialist'
   
2. What are the 3-5 core tasks this agent will perform?
   - Be specific about actions and outcomes
   
3. Who is the target audience for this agent?
   - Developers, product managers, analysts, etc.
   
4. What existing BMAD agents (if any) would this agent work with?
   - List any agents it complements or depends on

**Capture:** Basic agent profile and purpose statement

## Phase 2: Capabilities
### Purpose: Define specific commands and resources

**Questions to ask user:**
1. What specific commands should this agent respond to? (list 5-10)
   - Format: command name and description
   
2. What templates or documents should it create?
   - List template types and purposes
   
3. What checklists or validations should it perform?
   - List validation scenarios
   
4. What data or knowledge bases does it need access to?
   - List required data sources

**Capture:** Commands list and dependencies structure

## Phase 3: Personality
### Purpose: Define communication style and boundaries

**Questions to ask user:**
1. How should this agent communicate?
   - Options: technical/friendly/formal/casual
   
2. What expertise level should it demonstrate?
   - Options: expert/mentor/collaborator
   
3. What guardrails or restrictions should it have?
   - List things it should NOT do
   
4. When should users choose this agent over others?
   - Clear differentiation criteria

**Capture:** Persona definition and behavioral guidelines

## Phase 4: Integration
### Purpose: Determine how agent fits in BMAD ecosystem

**Questions to ask user:**
1. Will this be a core agent or part of an expansion pack?
   - Core: ships with BMAD
   - Expansion: separate package
   
2. What slash command prefix should it use?
   - Must be unique, suggest checking existing prefixes
   
3. Which agent teams should include this agent?
   - Review existing teams or create new
   
4. Does it need special IDE or web UI considerations?
   - Any environment-specific features

**Capture:** Integration specifications and team assignments

## Phase 5: Refinement
### Purpose: Review and finalize agent configuration

**Actions:**
1. Generate draft agent YAML structure based on collected information
2. Show complete draft to user for review
3. Request feedback on each section:
   - Agent metadata (name, id, icon)
   - Persona definition
   - Commands list
   - Dependencies
   - Activation instructions
4. Make adjustments based on feedback
5. Validate against BMAD conventions:
   - Check for ID uniqueness
   - Verify slash command conflicts
   - Ensure dependency availability
   - Validate YAML structure

## Final Output Template
```yaml
# <!-- Powered by BMAD™ Core -->
# [Agent Name] Agent

ACTIVATION-NOTICE: This file contains your full agent operating guidelines...

## COMPLETE AGENT DEFINITION FOLLOWS

IDE-FILE-RESOLUTION:
  - Dependencies map to root/type/name
  - [Custom resolution rules if needed]

REQUEST-RESOLUTION: [How to match user requests]

activation-instructions:
  - STEP 1: Read THIS ENTIRE FILE
  - STEP 2: Adopt the persona defined below
  - STEP 3: Load and read bmad-core/core-config.yaml if exists
  - STEP 4: Greet user with name/role and run *help
  - [Additional custom instructions]

agent:
  name: [From Phase 1]
  id: [Unique ID based on name]
  title: [Full descriptive title]
  icon: [Appropriate emoji]
  whenToUse: [From Phase 3, question 4]

persona:
  role: [From Phase 1]
  identity: [Expanded from Phase 1-3]
  core_principles:
    [From Phase 3]

commands:
  - help: Show available commands
  [From Phase 2, question 1]
  - exit: Exit agent mode

dependencies:
  [From Phase 2, organized by type]
```

## Validation Checklist
- [ ] Agent ID is unique across framework
- [ ] Slash command doesn't conflict
- [ ] All dependencies exist or are created
- [ ] YAML structure is valid
- [ ] whenToUse clearly differentiates from other agents
- [ ] Activation instructions are complete
- [ ] Commands are well-defined
- [ ] Persona is consistent and clear

## Success Criteria
- Agent file created in correct location
- All required sections present and valid
- User confirms agent meets requirements
- Agent can be successfully activated
- Commands function as expected