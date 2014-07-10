<?php

$conf['theme_default'] = 'jdi5';

// Add IP sent by CloudFlare
if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
  $_SERVER['REMOTE_ADDR'] = $_SERVER['HTTP_CF_CONNECTING_IP'];
}
