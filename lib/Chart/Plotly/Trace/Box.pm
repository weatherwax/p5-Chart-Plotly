package Chart::Plotly::Trace::Box;
use Moose;

use Chart::Plotly::Trace::Attribute::Line;
use Chart::Plotly::Trace::Attribute::Marker;


# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Box

=head1 SYNOPSIS

    use Chart::Plotly;
    use Chart::Plotly::Trace::Box;
    use Chart::Plotly::Plot;

    my $x = [1,1,1,1,1,1,2,2,2,2,2,3,3,3,3,3];
    my $box1 = Chart::Plotly::Trace::Box->new(x => $x, y => [map{rand()}(1..(scalar(@$x)))], name => "box1");
    my $box2 = Chart::Plotly::Trace::Box->new(x => $x, y => [map{rand()}(1..(scalar(@$x)))], name => "box2");
    my $plot = Chart::Plotly::Plot->new(traces => [$box1, $box2], layout => {boxmode => 'group'});

    Chart::Plotly::show_plot($plot);


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#box>

=head1 DISCLAIMER

This is an unofficial Plotly Perl module. Currently I'm not affiliated in any way with Plotly. 
But I think plotly.js is a great library and I want to use it with perl.

=head1 METHODS

=cut

=head2 TO_JSON

Serialize the trace to JSON. This method should be called only by L<JSON> serializer.

=cut

sub TO_JSON {
	my $self = shift; 
	my %hash = %$self; 
	if ($self->can('type') && (!defined $hash{'type'})) {
		$hash{type} = $self->type();
	}
	return \%hash;
}



=head1 ATTRIBUTES

=over

=cut

=item * boxmean

If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). If *sd* the standard deviation is also drawn.

=cut

has boxmean => (
    is => 'rw',
    documentation => "If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). If *sd* the standard deviation is also drawn.",
);

=item * boxpoints

If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points

=cut

has boxpoints => (
    is => 'rw',
    documentation => "If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points",
);

=item * fillcolor

Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.

=cut

has fillcolor => (
    is => 'rw',
    documentation => "Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.",
);

=item * jitter

Sets the amount of jitter in the sample points drawn. If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn in a random jitter of width equal to the width of the box(es).

=cut

has jitter => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the amount of jitter in the sample points drawn. If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn in a random jitter of width equal to the width of the box(es).",
);

=item * line


=cut

has line => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Line"
);

=item * marker


=cut

has marker => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Marker"
);

=item * orientation

Sets the orientation of the box(es). If *v* (*h*), the distribution is visualized along the vertical (horizontal).

=cut

has orientation => (
    is => 'rw',
    documentation => "Sets the orientation of the box(es). If *v* (*h*), the distribution is visualized along the vertical (horizontal).",
);

=item * pointpos

Sets the position of the sample points in relation to the box(es). If *0*, the sample points are places over the center of the box(es). Positive (negative) values correspond to positions to the right (left) for vertical boxes and above (below) for horizontal boxes

=cut

has pointpos => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the position of the sample points in relation to the box(es). If *0*, the sample points are places over the center of the box(es). Positive (negative) values correspond to positions to the right (left) for vertical boxes and above (below) for horizontal boxes",
);

=item * whiskerwidth

Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).

=cut

has whiskerwidth => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).",
);

=item * x

Sets the x sample data or coordinates. See overview for more info.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the x sample data or coordinates. See overview for more info.",
);

=item * x0

Sets the x coordinate of the box. See overview for more info.

=cut

has x0 => (
    is => 'rw',
    isa => "Any",
    documentation => "Sets the x coordinate of the box. See overview for more info.",
);

=item * y

Sets the y sample data or coordinates. See overview for more info.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the y sample data or coordinates. See overview for more info.",
);

=item * y0

Sets the y coordinate of the box. See overview for more info.

=cut

has y0 => (
    is => 'rw',
    isa => "Any",
    documentation => "Sets the y coordinate of the box. See overview for more info.",
);

=item * name

Sets the trace name

=cut

has name => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets the trace name",
);

=pod

=back

=cut


=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}


__PACKAGE__->meta->make_immutable();
1;
