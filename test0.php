<?php

function archive_icons($folder_full_path){
	$zip = new ZipArchive();
	$filename = $folder_full_path."/favicons.zip";
	$zip->open($filename, ZIPARCHIVE::CREATE);
	if ($zip->open($filename, ZipArchive::CREATE)!==TRUE) {
		exit("Невозможно открыть <$filename>\n");
	}
	$dir = new DirectoryIterator($folder_full_path);
	foreach ($dir as $fileinfo) {
		if (!$fileinfo->isDot()) {
			$zip->addFile($folder_full_path . $fileinfo->getFilename(),$fileinfo->getFilename());
		}
	}
	$zip->close();
}

archive_icons('/test_zip/');
?>