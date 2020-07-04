<?php 

add_action( 'wp_enqueue_scripts', 'child_theme_enqueue_styles' );
function child_theme_enqueue_styles() {
    $parenthandle = 'parent-style'; // This is 'twentytwenty-style' for the Twenty Twenty theme.
    $theme = wp_get_theme();
    wp_enqueue_style( $parenthandle, get_template_directory_uri() . '/style.css',
        array(),  // if the parent theme code has a dependency, copy it to here
        $theme->parent()->get('Version')
        );
    wp_enqueue_style( 'child-style', get_stylesheet_uri(),
        array( $parenthandle ),
        $theme->get('Version') // this only works if you have Version in the style header
        );
}

 function hide_admin_side_bar() {
    if (current_user_can('editor')) {
        add_filter('show_admin_bar','__return_false');
    }
}
add_action('wp_head','hide_admin_side_bar'); 
?>