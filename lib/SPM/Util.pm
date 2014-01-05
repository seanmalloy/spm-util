package SPM::Util;

# Copyright (c) 2014 Sean Malloy. All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#    - Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#    - Redistributions in binary form must reproduce the above
#      copyright notice, this list of conditions and the following
#      disclaimer in the documentation and/or other materials provided
#      with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# ABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

use strict;
use warnings;
use English qw( -no_match_vars );
require Exporter;

our @ISA       = qw(Exporter);
our @EXPORT_OK = qw( );
our $VERSION   = '0.01';

#############################################
# Usage      : example(scalar)
# Purpose    : Test if a scalar is defined
# Returns    : True if scalar is defined
# Parameters : scalar variable
# Throws     : none
# Comments   : none
# See Also   : perldoc -f defined, perldoc -f undef
sub example {
    my $parameter = shift;
    if (!defined $parameter) {
        return;
    }
    return 1;
}

1;

########## Pod Weaver Documentation ##########

# ABSTRACT: please fill in this section

=pod

=head1 SYNOPSIS

  ...

=head1 DESCRIPTION

Put description here.

=head1 EXPORT

Nothing is exported by defualt from this module. All functios need to
be explicitly requested.

=head1 SEE ALSO

  ...

=head1 BUGS

No known bugs at this time.

=cut

########## Pod Weaver Function Documentation ##########

=pod 

=func example

Example function.

=cut

