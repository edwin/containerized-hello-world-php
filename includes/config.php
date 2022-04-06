<?php

function config($key = '')
{
    $config = [
        'name' => 'Simple PHP Website',
        'site_url' => '',
        'pretty_uri' => false,
        'nav_menu' => [
            '' => 'Home',
            'about-us' => 'About Us',
            'product' => 'Products',
            'contact' => 'Contact',
        ],
        'template_path' => 'templates',
        'content_path' => 'contents',
        'version' => 'v1.0',
    ];

    return isset($config[$key]) ? $config[$key] : null;
}