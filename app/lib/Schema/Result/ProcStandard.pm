use utf8;
package Schema::Result::ProcStandard;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::ProcStandard

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<proc_standard>

=cut

__PACKAGE__->table("proc_standard");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 grade

  data_type: 'tinyint'
  is_nullable: 0

=head2 alpha

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 content

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "grade",
  { data_type => "tinyint", is_nullable => 0 },
  "alpha",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "content",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 plans

Type: has_many

Related object: L<Schema::Result::Plan>

=cut

__PACKAGE__->has_many(
  "plans",
  "Schema::Result::Plan",
  { "foreign.proc_standard_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-12-17 01:48:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:72lM81knIIyJq66gT+FOBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
