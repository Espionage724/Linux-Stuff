<?php
if (!defined('GNUSOCIAL')) { exit(1); }

$config['site']['name'] = 'Realm of Espionage';

$config['site']['server'] = 'www.realmofespionage.com';
$config['site']['path'] = 'social';

$config['site']['fancy'] = true;

$config['site']['ssl'] = 'always';

$config['db']['database'] = 'mysqli://gnusocial:x@192.168.1.154/gnusocial';

$config['db']['type'] = 'mysql';

// Uncomment below for better performance. Just remember you must run
// php scripts/checkschema.php whenever your enabled plugins change!
$config['db']['schemacheck'] = 'script';

$config['site']['profile'] = 'community';

$config['mail']['domain'] = 'realmofespionage.com';
$config['mail']['notifyfrom'] = 'accounts@realmofespionage.com';
$config['mail']['backend'] = 'smtp';
$config['mail']['params'] = array(
'host' => 'smtp.sendgrid.net',
'port' => 587,
'auth' => true,
'username' => 'Espionage724',
'password' => 'x'
);

addPlugin('EmailRegistration');
addPlugin("GeoURL");
addPlugin("ModPlus");
addPlugin("ChooseTheme");
