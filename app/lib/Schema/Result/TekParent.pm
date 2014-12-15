use utf8;
package Schema::Result::TekParent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::TekParent

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<tek_parent>

=cut

__PACKAGE__->table("tek_parent");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 section

  data_type: 'tinyint'
  is_nullable: 0

=head2 topic

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 grade

  data_type: 'tinyint'
  is_nullable: 0

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
  "section",
  { data_type => "tinyint", is_nullable => 0 },
  "topic",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "grade",
  { data_type => "tinyint", is_nullable => 0 },
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

=head2 teks

Type: has_many

Related object: L<Schema::Result::Tek>

=cut

__PACKAGE__->has_many(
  "teks",
  "Schema::Result::Tek",
  { "foreign.tek_parent_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-12-15 01:23:12
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ri09BvUZQuf/t+sqy+7E4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
