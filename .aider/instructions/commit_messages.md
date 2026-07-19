# Commit messages

* Write commit messages in the imperative mood.
* Begin the first word with a capital letter (for example, `Add`, `Refine`, `Upgrade`), except for conventional prefixes.
* Keep messages concise and focused on what changed.
* Describe what was done, not why it was done, how it was implemented, or how to use it.
* Do not include cautions, rationale, implementation details, or testing notes unless explicitly requested.

Use Conventional Commit prefixes when appropriate:

* `feat:` for new functionality.
* `fix:` for bug fixes.
* `refactor:` for code changes that do not change behavior.
* `style:` for formatting or style-only changes.
* `docs:` for documentation changes.
* `chore:` for maintenance, tooling, dependencies, or other non-functional changes.

Keep prefixes lowercase.

Conventional Commit prefixes are optional.
Use them only when they accurately describe the nature of the change.

Examples:

* `feat: Add fund name normalization pipeline`
* `fix: Handle empty GP names`
* `refactor: Extract company matching logic`
* `docs: Update architecture overview`
* `style: Format markdown tables`
* `chore: Upgrade aider`
