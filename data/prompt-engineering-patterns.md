# <!-- Powered by BMAD™ Core -->
# Prompt Engineering Patterns for BMAD Agents

## Core Prompt Structure

### The RTCATFG Pattern
Essential elements for effective agent prompts:

```yaml
Role: "Define who the agent is"
Task: "What the agent needs to accomplish"
Context: "Background information and environment"
Audience: "Who the agent is serving"
Tone: "Communication style and approach"
Format: "Structure of outputs"
Goal: "Success criteria and objectives"
```

### Example Implementation
```yaml
Role: "You are an expert API Designer specializing in REST architecture"
Task: "Design and document RESTful APIs following best practices"
Context: "Working within enterprise software development teams using modern cloud platforms"
Audience: "Backend developers, frontend developers, and technical architects"
Tone: "Professional, precise, and educational"
Format: "OpenAPI specifications, markdown documentation, and code examples"
Goal: "Create maintainable, scalable, and well-documented APIs"
```

## Structured Elicitation Techniques

### Progressive Refinement
Start broad, narrow with each interaction:

```yaml
Level 1: "What kind of system are you building?"
Level 2: "What are the main components?"
Level 3: "How do these components interact?"
Level 4: "What are the specific requirements for [component]?"
Level 5: "Let's define the implementation details..."
```

### Contextual Questioning
Build context through targeted questions:

```yaml
Discovery:
  - "What problem are you solving?"
  - "Who are the users?"
  - "What constraints exist?"
  
Requirements:
  - "What must the solution do?"
  - "What quality attributes matter?"
  - "What are the acceptance criteria?"
  
Implementation:
  - "What technology stack?"
  - "What existing systems integrate?"
  - "What is the timeline?"
```

## Instruction Patterns

### Clear Command Structure
```yaml
activation-instructions:
  - "STEP 1: [Explicit action]"
  - "STEP 2: [Next action]"
  - "DO NOT: [Prohibition]"
  - "ALWAYS: [Requirement]"
  - "CRITICAL: [Essential rule]"
```

### Conditional Logic
```yaml
"IF [condition] THEN [action] ELSE [alternative]"
"WHEN [event] DO [response]"
"UNLESS [exception] ALWAYS [default]"
```

## Persona Development Patterns

### Expert Persona
```yaml
persona:
  identity: "Senior [Domain] Specialist with 15+ years experience"
  expertise:
    - "Deep knowledge of [specific area]"
    - "Proven track record in [achievement]"
    - "Author of [credentials]"
  approach:
    - "Methodical analysis"
    - "Best practices focus"
    - "Evidence-based recommendations"
```

### Mentor Persona
```yaml
persona:
  identity: "Patient educator and guide"
  expertise:
    - "Breaking down complex concepts"
    - "Providing clear examples"
    - "Encouraging exploration"
  approach:
    - "Step-by-step guidance"
    - "Positive reinforcement"
    - "Learning from mistakes"
```

### Collaborator Persona
```yaml
persona:
  identity: "Team member and thought partner"
  expertise:
    - "Cross-functional collaboration"
    - "Brainstorming and ideation"
    - "Consensus building"
  approach:
    - "Active listening"
    - "Building on ideas"
    - "Seeking input"
```

## Output Formatting Patterns

### Structured Reports
```yaml
output_format:
  title: "[Report Type]: [Subject]"
  sections:
    - "Executive Summary"
    - "Detailed Analysis"
    - "Recommendations"
    - "Next Steps"
  elements:
    - "Bullet points for key findings"
    - "Tables for comparisons"
    - "Code blocks for examples"
    - "Diagrams for architecture"
```

### Interactive Responses
```yaml
response_pattern:
  greeting: "Acknowledge user request"
  options: "Present numbered choices"
  prompt: "Ask for selection"
  action: "Execute based on choice"
  confirm: "Verify completion"
```

## Chain of Thought Patterns

### Reasoning Steps
```yaml
thinking_process:
  1_understand: "Parse and comprehend request"
  2_analyze: "Break down into components"
  3_plan: "Determine approach"
  4_execute: "Perform actions"
  5_verify: "Check results"
  6_report: "Communicate outcome"
```

### Problem Decomposition
```yaml
decomposition:
  main_problem: "Define the core challenge"
  sub_problems:
    - "Identify component issues"
    - "Determine dependencies"
    - "Order by priority"
  solutions:
    - "Address each sub-problem"
    - "Integrate solutions"
    - "Validate complete solution"
```

## Constraint Specification Patterns

### Boundaries and Limits
```yaml
constraints:
  must_have:
    - "Essential requirement 1"
    - "Essential requirement 2"
  must_not:
    - "Prohibited action 1"
    - "Prohibited action 2"
  should_prefer:
    - "Preferred approach 1"
    - "Preferred approach 2"
```

### Guardrails
```yaml
safety_rules:
  always:
    - "Validate inputs"
    - "Check permissions"
    - "Log actions"
  never:
    - "Expose secrets"
    - "Bypass validation"
    - "Ignore errors"
  confirm_before:
    - "Destructive operations"
    - "External API calls"
    - "Data modifications"
```

## Context Management Patterns

### State Preservation
```yaml
context_tracking:
  current_task: "Track active operation"
  history: "Remember previous actions"
  user_preferences: "Store user choices"
  session_data: "Maintain working state"
```

### Context Switching
```yaml
mode_switching:
  entry: "Save current context"
  transition: "Load new context"
  exit: "Restore previous context"
  cleanup: "Clear temporary data"
```

## Error Handling Patterns

### Graceful Degradation
```yaml
error_handling:
  try: "Attempt primary approach"
  catch: "Handle specific errors"
  fallback: "Use alternative method"
  report: "Inform user of issue"
  suggest: "Provide remediation steps"
```

### User-Friendly Errors
```yaml
error_message:
  what: "Template not found"
  why: "File 'api-tmpl.yaml' doesn't exist"
  impact: "Cannot create API documentation"
  solution: "Choose from available templates: [list]"
  alternative: "Or create custom template"
```

## Interaction Patterns

### Confirmation Loops
```yaml
confirmation:
  show: "Display planned action"
  ask: "Request confirmation (y/n)"
  validate: "Check response"
  proceed: "Execute if confirmed"
  cancel: "Abort if declined"
```

### Progressive Disclosure
```yaml
information_reveal:
  basic: "Show essential info"
  detailed: "Expand on request"
  advanced: "Expert options"
  complete: "Full documentation"
```

## Meta-Prompting Patterns

### Self-Improvement
```yaml
optimization:
  monitor: "Track command usage"
  analyze: "Identify patterns"
  suggest: "Recommend improvements"
  adapt: "Adjust behavior"
```

### Dynamic Adaptation
```yaml
adaptation:
  detect: "Identify user expertise level"
  adjust: "Modify communication style"
  learn: "Remember preferences"
  evolve: "Improve over time"
```

## Templating Patterns

### Variable Substitution
```yaml
template:
  pattern: "Create {type} for {project} using {framework}"
  variables:
    type: "[document|code|config]"
    project: "[user_input]"
    framework: "[React|Vue|Angular]"
```

### Conditional Sections
```yaml
conditional_template:
  base: "Standard content"
  if_condition_a: "Additional content A"
  if_condition_b: "Additional content B"
  optional: "Include if requested"
```

## Validation Patterns

### Input Validation
```yaml
validation:
  format: "Check structure"
  range: "Verify boundaries"
  existence: "Confirm availability"
  permission: "Validate access"
  consistency: "Ensure coherence"
```

### Output Validation
```yaml
quality_check:
  completeness: "All sections present"
  accuracy: "Information correct"
  formatting: "Proper structure"
  readability: "Clear and concise"
```

## Advanced Patterns

### Multi-Agent Coordination
```yaml
coordination:
  handoff: "Transfer context to next agent"
  collaborate: "Work with other agents"
  delegate: "Assign subtasks"
  synchronize: "Align outputs"
```

### Recursive Refinement
```yaml
refinement:
  initial: "First attempt"
  evaluate: "Assess quality"
  improve: "Apply corrections"
  iterate: "Repeat until satisfied"
  finalize: "Polish and complete"
```

## Best Practices Summary

### DO's
- ✅ Use clear, specific instructions
- ✅ Define explicit success criteria
- ✅ Provide examples and templates
- ✅ Include error handling
- ✅ Maintain consistent voice

### DON'Ts
- ❌ Use ambiguous language
- ❌ Assume context
- ❌ Skip validation
- ❌ Ignore edge cases
- ❌ Mix personas

## Testing Your Prompts

### Evaluation Criteria
1. **Clarity**: Can users understand immediately?
2. **Completeness**: Are all cases covered?
3. **Consistency**: Does behavior remain stable?
4. **Efficiency**: Are responses timely?
5. **Effectiveness**: Does it achieve goals?

### Test Cases
- Minimal input
- Maximum input
- Invalid input
- Edge cases
- Repeated use
- Context switches
- Error conditions