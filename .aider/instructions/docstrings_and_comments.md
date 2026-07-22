# Writing docstrings and comments

## Semantic line breaks

-   Use semantic line breaks.
    Lines are broken by meaning,
    often at punctuation
    and conjunctions.
-   The repository contains older docstrings that are width-wrapped.
    Do not imitate them.
    This instruction overrides surrounding code style.
-   Keep a one-line docstring's summary on the opening line;
    break only multi-clause or multi-sentence docstrings.
-   Do not apply semantic line breaks to machine-directed
    or format-fixed comments —
    tool directives such as noqa,
    type: ignore,
    linter/checker pragmas, etc.
-   Trailing (end-of-line) comments are single-line by nature;
    do not attempt to break them.
    If a trailing comment is long enough to want breaking,
    move it to a standalone comment above the code
    and apply semantic line breaks there.

## Docstrings

A docstring layers PEP 257 / D205 structure on top of semantic line breaks:
a short imperative summary on exactly one line,
then a blank line,
then an optional body.
Keep the summary to one line —
if it runs long,
shorten the wording rather than wrap it.
Apply semantic line breaks within the body only,
never across the summary,
and never fold the summary into the first body sentence:
the blank line is load-bearing for tooling
(ruff D-rules, IDE hover, Sphinx).
