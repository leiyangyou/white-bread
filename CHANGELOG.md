# Changelog

## V2.1.0 (2015-11-08)

### Enhancements
* Add finalize() function to contexts called after every scenario.
* Handle any error thrown in a step.
* Format assertion errors from Espec (as well as the previously handled ExUnit)

### Bug fixes
none

### Backwards incompatible changes
none

## V2.0.0 (2015-10-14)

### Enhancements
* Add Doc string support (see http://www.relishapp.com/cucumber/cucumber/docs/gherkin/doc-strings).
* Application is automatically started on run.
* Elixir 1.1.0 is supported.

### Bug fixes
* Lines commented out with a # no longer break the parser.
* windows line endings handled correctly.

### Backwards incompatible changes
 * Application will be automatically started unless --no-start is added: ```dogma WhiteBread.run --no-start```

## v1.0.1 (2015-06-24)

### Enhancements
none

### Bug fixes
 * Fixed an error caused when quoted strings appeared in the middle of an undefined step.

### Backwards incompatible changes
none

## v1.0.0 (2015-06-16)
This is the same as version 0.6.0 but pinned to 1.0.0 as the interface of the feature context can now be considered stable.

### Enhancements
none

### Bug fixes
none

### Backwards incompatible changes
none

## v0.6.0 (2015-03-22)

### Enhancements
* add subcontext macro to context to help break up big contexts

### Bug fixes
no significant fixes

### Backwards incompatible changes
none

## v0.5.0 (2015-03-22)

### Enhancements
* Added stack trace to function clause match errors

### Bug fixes
no significant fixes

### Backwards incompatible changes
* error returned for :no_clause_match is now a tuple like {FunctionMatchError, Trace}

## v0.4.0 (2015-03-21)

### Enhancements
* Added table handling. Any step followed by a table will get key :table_data
* Added support for scenario outlines
* Add code suggestions for missing steps
* All step functions can now be arity 1 or 2

### Bug fixes
no significant fixes

### Backwards incompatible changes
* step functions now only have 1 or 2 arguments. The second argument is always a map. Previously regex named matches each became an argument.

## v0.3.0 (2015-03-14)

### Enhancements
* Added initial_state macro which takes a block that returns the starting state
for a context.

### Bug fixes
no significant fixes

### Backwards incompatible changes
none


## v0.2.0 (2015-03-09)

### Enhancements
* Added support for --tags on mix task.
* Added default Context loaded from features/default_contect.exs

### Bug fixes
* warnings for a handful of unused variables removed.

### Backwards incompatible changes
none
