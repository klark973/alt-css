<?php

$help = "<a href=\"https://www.altlinux.org/\" target=\"_blank\" ".
	    "title=\"Инструкции по установке для дистрибутивов Альт ".
	    "на бранче p11 (в стадии наполнения). Если не указано, ".
	    "поищите на нашей ВиКи или запросите в отделе продаж.\">".
	    "<img src=\"icons/help.png\" alt=\"Помощь\" /></a>";
$elastic = true;

function show_thead(&$avail, $diff=false) {
    global $empty, $fcol, $help;

    $output = "<tr>".(!$diff ? "":
	"<th class=\"lineno\">#</th>").
	"<th class=\"product\">$fcol</th>".
	"<th class=\"help\">$help</th>".
	"<th class=\"cell\">Альт{$empty}Домен{$empty}11</th>".
	"<th class=\"empty\">{$empty}</th>".
	"</tr>\n";

    return $output;
}

?>