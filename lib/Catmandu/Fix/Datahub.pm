package Catmandu::Fix::Datahub;

use strict;
use 5.008_005;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=head1 NAME

=for html <a href="https://travis-ci.org/thedatahub/Catmandu-Fix-Datahub"><img src="https://travis-ci.org/thedatahub/Catmandu-Fix-Datahub.svg?branch=master"></a>

Catmandu::Fix::Datahub - Utility functions and generic fixes developed for the Datahub project

=head1 SYNOPSIS

  use Catmandu::Fix::Datahub::Util;

=head1 FUNCTIONS

=head2 C<Catmandu::Fix::Datahub::Util>

  use Catmandu::Fix::Datahub::Util;

=over 4

=item C<declare_source($fixer, $var, $declared_var)>

For an item C<$var>, which is a path (as a string) in a Catmandu fix, assign the value at the path to C<$declared_var>,
which is a variable that was previously declared in the fix code:

  my $f_var = $self->fixer->generate_var();
  $code .= "my ${f_var};";
  $code .= declare_source($self->fixer, 'foo.bar', $f_var);

=item C<walk($fixer, $path, $key, $h)>

Walk through a C<$path> (as an arrayref) until at C<$key>. Assign the value of C<$key> to C<$h>.
C<$h> must be declared in the fix code.

  my $f_var = $self->fixer->generate_var();
  $code .= "my ${f_var};";
  $code .= walk($self->fixer, ['foo', 'bar'], $f_var);

=back

=head1 AUTHOR

Pieter De Praetere E<lt>pieter@packed.beE<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catmandu>

=cut
