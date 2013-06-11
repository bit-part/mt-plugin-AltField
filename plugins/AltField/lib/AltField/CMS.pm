package AltField::CMS;
use strict;

sub _edit_entry_parem {
    my ($cb, $app, $param, $tmpl) = @_;

    my $plugin = MT->component('AltField');
    my $blog = $app->blog
        or return;
    my $blog_id = $blog->id;

    my $alt_html_title = $plugin->get_config_value('alt_html_title', 'blog:'.$blog_id);
    my $alt_html_excerpt = $plugin->get_config_value('alt_html_excerpt', 'blog:'.$blog_id);
    my $alt_html_keywords = $plugin->get_config_value('alt_html_keywords', 'blog:'.$blog_id);
    my $alt_html_tags = $plugin->get_config_value('alt_html_tags', 'blog:'.$blog_id);

    my $field;
    if ($alt_html_title) {
        $field = $tmpl->getElementById('title');
        $field->innerHTML($alt_html_title);
    }
    if ($alt_html_excerpt) {
        $field = $tmpl->getElementById('excerpt');
        $field->innerHTML($alt_html_excerpt);
    }
    if ($alt_html_keywords) {
        $field = $tmpl->getElementById('keywords');
        $field->innerHTML($alt_html_keywords);
    }
    if ($alt_html_tags) {
        $field = $tmpl->getElementById('tags');
        $field->innerHTML($alt_html_tags);
    }
}

1;