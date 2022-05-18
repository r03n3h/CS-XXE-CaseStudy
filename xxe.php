<?php
libxml_disable_entity_loader (false);
$xmlfile = file_get_contents($argv[1]);
$dom = new DOMDocument();
$dom->loadXML($xmlfile, LIBXML_NOENT | LIBXML_DTDLOAD);
$info = simplexml_import_dom($dom);

echo $info->asXML();
?>
