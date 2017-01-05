# NAME

Catmandu::Fix::Datahub - Utility functions and generic fixes developed for the Datahub project

# SYNOPSIS

    use Catmandu::Fix::Datahub::Util;

# FUNCTIONS

## `Catmandu::Fix::Datahub::Util`

    use Catmandu::Fix::Datahub::Util;

- `declare_source($fixer, $var, $declared_var)`

    For an item `$var`, which is a path (as a string) in a Catmandu fix, assign the value at the path to `$declared_var`,
    which is a variable that was previously declared in the fix code:

        my $f_var = $self->fixer->generate_var();
        $code .= "my ${f_var};";
        $code .= declare_source($self->fixer, 'foo.bar', $f_var);

- `walk($fixer, $path, $key, $h)`

    Walk through a `$path` (as an arrayref) until at `$key`. Assign the value of `$key` to `$h`.
    `$h` must be declared in the fix code.

        my $f_var = $self->fixer->generate_var();
        $code .= "my ${f_var};";
        $code .= walk($self->fixer, ['foo', 'bar'], $f_var);

# AUTHOR

Pieter De Praetere <pieter@packed.be>

# COPYRIGHT

Copyright 2017- PACKED vzw

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
