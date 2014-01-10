package SPM::X::BadValue;

# Copyright (c) 2013 - 2014 Sean Malloy. All rights reserved.
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

use Moose;
use English qw( -no_match_vars );

with qw(Throwable::X);
 
use Throwable::X -all; # to get the Payload helper

our $VERSION = '0.01';

sub x_tags { qw(value) }
 
# What bad value were we given?
has given_value => (
  is => 'ro',
  required => 1,
  traits   => [ Payload ],
);
 
# What was the value supposed to be used for?
has given_for => (
  is  => 'ro',
  isa => 'Str',
  traits => [ Payload ],
);

__PACKAGE__->meta->make_immutable;

1;

########## Pod Weaver Documentation ##########

# ABSTRACT: Perl Extension For Thowing a BadValue Exception

=pod

=head1 SYNOPSIS

  use SPM::X::BadValue;

  SPM::X::BadValue->throw({
    ident   => 'bad filename',
    tags    => [ qw(value) ],
    public  => 1,
    message => "invalid value %{given_value}s for %{given_for}s",
    given_value => $filename,
    given_for   => 'filename',
  });

=head1 DESCRIPTION

Throw a BadValue exception.

=head1 SEE ALSO

Read the documentation for Perl module Throwable::X.

=head1 BUGS

No known bugs at this time.

=cut

########## Pod Weaver Method Documentation ##########

=pod 

=method throw

Throws an exception.

=method x_tags

List of tags this modules has.

=cut

