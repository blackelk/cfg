# Python docstrings and comments

This rule applies to every generated or modified Python docstring
and standalone prose comment.

## Use semantic line breaks.
Never width-wrap prose.

Bad:

```python
def load_configuration():
    """Load configuration from disk and validate it before returning the
    resulting configuration object to the caller.
    """
```

Good:

```
def load_configuration():
    """Load and validate the configuration.

    Load the configuration from disk,
    validate its contents,
    and return the resulting object to the caller.
    """
```

Bad:

```python
# Retry the request because the remote service may temporarily reject the
# connection while it is restarting.
```

Good:

```python
# Retry the request
# because the remote service may temporarily reject the connection
# while it is restarting.
```

For a longer docstring:

-   Write a short one-line imperative summary.
-   Add a blank line.
-   Write the body using semantic line breaks.

Do not apply this rule to:

-   noqa
-   type: ignore
-   linter or checker directives
-   format-fixed comments
-   end-of-line comments

## Write documentation for future readers, not for the current task

Write documentation
as though a developer encounters the code months later
without access to the conversation that produced it.

## Document only this unit's responsibilities

Docstrings and comments must describe the behavior,
contract,
and responsibilities of the current module,
class,
function,
or test.

Do not document implementation details
or behavior that belong to callers,
callees,
dependency injection,
service containers,
framework wiring,
or application composition
unless the current unit's public contract directly depends on them.
