<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex, nofollow" />
<title>Управление</title>
<base target="main" />
<style type="text/css">
<!--

body { margin:0; padding:0; color:#333; font-size:120%; font-style:normal; font-weight:normal; font-family:Arial; background-color:#fff; }
a:link, a:visited { color:#00f; text-decoration:none; }
#info { margin:0; padding:0; border-spacing:1px; border:solid 1px #4d83e7; border-collapse:collapse; background-color:#f7f7f7; }
#info td { padding:3px; vertical-align:top; }
#info tr, #info td { border:solid 1px #ccccff; }
#info .alt { background-color: #e3e3e3; }
#info tr:hover, #info .alt:hover { background-color: #ffff99; }
#info .group { color:brown; font-weight:900; text-align:left; background-color:#e0e0f7; }
#info .left, #info .right { text-align:left; }

-->
</style>
</head>
<body onload="t.focus();">
<form action="WorkTable.php" method="GET" target="main">
<table id="info" width="100%">
<tr><td colspan="2" class="group"><a href="WorkTable.php" title="Показать всё, сгруппировав по умолчанию"><img src="icons/home.png" alt="Назад" /></a> РАСШИРЕННЫЙ ПОИСК</td></tr>
<tr><td><label for="t">Содержит&nbsp;текст:</label></td><td><input type="text" id="t" name="t" tabindex="1" /></td></tr>
<tr><td><label for="r">Результат:</label></td><td>
<select name="r">
 <option value="0" selected="selected">Не имеет значения</option>
 <option value="1">Только совместимое</option>
 <option value="2">Только с сертификатом</option>
 <option value="3">Только несовместимое</option>
 <option value="4">Только на тестировании</option>
</select></td></tr>
<tr><td><label for="l">Список:</label></td><td>
<select name="l">
 <option value="0" selected="selected">Не важно</option>
 <option value="1">Только «Список 0»</option>
 <option value="2">Только «Список 1»</option>
 <option value="3">Только «Список 2»</option>
</select></td></tr>
<tr><td><label for="a">Платформа:</label></td><td>
<select name="a">
 <option value="0" selected="selected">Любая</option>
 <option value="1">Все Intel x86</option>
 <option value="2">Все не-Intel</option>
 <option value="3">Все Elbrus</option>
{ALL-PLATFORMS}
</select>
</td></tr>
<tr><td><label for="w">Кто проверял:</label></td><td>
<select name="w">
 <option value="0" selected="selected">Кто угодно</option>
 <option value="1">Только «Мы»</option>
 <option value="2">Только «Они»</option>
 <option value="3">Только «Все»</option>
</select>
</td></tr>
<tr><td><label for="d">Дистрибутив:</label></td><td>
<select name="d">
 <option value="0" selected="selected">Не имеет значения</option>
 <option value="1">Любые настольные решения</option>
 <option value="2">Любые серверные решения</option>
 <option value="3">Альт 8 СП Рабочая станция</option>
 <option value="4">Альт 8 СП Сервер</option>
 <option value="5">Альт Рабочая станция 10</option>
 <option value="6">Альт Рабочая станция К 10</option>
 <option value="7">Альт Образование 10</option>
 <option value="8">Альт Сервер 10</option>
 <option value="9">Альт Сервер виртуализации 10</option>
 <option value="10">Альт Рабочая станция 9</option>
 <option value="11">Альт Рабочая станция К 9</option>
 <option value="12">Альт Образование 9</option>
 <option value="13">Альт Сервер 9</option>
 <option value="14">Альт Сервер виртуализации 9</option>
</select>
</td></tr>
<tr><td><label for="g">Категория:</label></td><td>
<select name="g">
 <optgroup label="Обобщённые">
  <option value="0" selected="selected">Все категории</option>
  <option value="1">Только программы</option>
  <option value="2">Только оборудование</option>
 </optgroup>
 <optgroup label="Программы">
{SOFT-GROUPS}
 </optgroup>
 <optgroup label="Оборудование">
{HARD-GROUPS}
 </optgroup>
</select>
</td></tr>
<tr><td><label for="s">Сгруппировать:</label></td><td>
<select name="s">
 <option value="0" selected="selected">По умолчанию</option>
 <option value="1">По партнёрам</option>
 <option value="2">По категориям</option>
 <option value="3">По платформам</option>
 <option value="4">По дистрибутивам</option>
</select>
</td></tr>
<tr><td>Сводить релизы:</td><td>
<label><input type="checkbox" name="m" />&nbsp;в основную версию</label><br />
</td></tr>
<tr><td>Выводить также:</td><td>
<label><input type="checkbox" name="O" />&nbsp;старые версии продуктов</label><br />
<label><input type="checkbox" name="I" />&nbsp;старую несовместимость</label><br />
<label><input type="checkbox" name="T" />&nbsp;старое тестирование</label>
</td></tr>
<tr><td>&nbsp;</td><td>
<input type="Submit" value="Найти" />&nbsp;<input type="Reset" value="Сбросить" />
</td></tr>
<tr>
<td colspan="2">&nbsp;</td></tr><tr><td colspan="2" class="group">КЛЮЧЕВЫЕ ДОКУМЕНТЫ СЛУЖБЫ</td>
</tr><tr>
<td class="left">Фев&nbsp;2022&nbsp;<a href="mailto:klark@basealt.ru" title="Леонид Кривошеин"><b>klark</b>@</a></td>
<td class="right"><a href="GetFile.php?fpath=Documents/client.pdf" title="Compatibility Service Suite: CLIENT">Система публикации и клиент CSS</a></td>
</tr><tr>
<td class="left">Фев&nbsp;2022&nbsp;<a href="mailto:klark@basealt.ru" title="Леонид Кривошеин"><b>klark</b>@</a></td>
<td class="right"><a href="GetFile.php?fpath=Documents/storage.pdf" title="Compatibility Service Suite: STORAGE">Описание хранилища данных Службы</a></td>
</tr><tr>
<td class="left">Апр&nbsp;2020&nbsp;<a href="mailto:sotor@basealt.ru" title="Сергей Новиков"><b>sotor</b>@</a></td>
<td class="right"><a href="https://intranet.altlinux.ru/Testing/iso" target="_blank" title="Открыть в отдельном окне...">ISO-образы и контрольные суммы дистрибутивов</a></td>
</tr><tr>
<td class="left">Апр&nbsp;2019&nbsp;<a href="mailto:sotor@basealt.ru" title="Сергей Новиков"><b>sotor</b>@</a></td>
<td class="right"><a href="https://redmine.basealt.space/projects/test/wiki/%D0%A2%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F_%D0%BA_%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B5_%D0%B7%D0%B0%D0%B4%D0%B0%D1%87_%D0%BD%D0%B0_%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5" target="_blank" title="Открыть в отдельном окне...">Требования к постановке задач на тестирование</a></td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2" class="group">ДРУГИЕ ПОЛЕЗНЫЕ ССЫЛКИ</td></tr>
<tr><td class="left">Совместимость&nbsp;P9:</td><td class="right">[<a href="TabDiffView.php?t=P9&amp;e=on" target="_blank" title="Открыть в новом окне">Разница</a>] [<a href="CompTableView.php?t=P9&amp;v=2&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;категориям</a>] [<a href="CompTableView.php?t=P9&amp;v=1&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;вендорам</a>] [<a href="CompTableView.php?t=P9&amp;v=0&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;продуктам</a>]</td></tr>
<tr><td class="left">Совместимость&nbsp;8SP:</td><td class="right">[<a href="TabDiffView.php?t=8SP&amp;e=on" target="_blank" title="Открыть в новом окне">Разница</a>] [<a href="CompTableView.php?t=8SP&amp;v=2&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;категориям</a>] [<a href="CompTableView.php?t=8SP&amp;v=1&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;вендорам</a>] [<a href="CompTableView.php?t=8SP&amp;v=0&amp;e=on" target="_blank" title="Открыть в новом окне">По&nbsp;продуктам</a>]</td></tr>
<tr><td class="left">Очередь задач:</td><td class="right"><a href="http://qataskstatus.ipa.basealt.ru/" target="_blank" title="Список и очередь текущих задач тестировщиков в реальном времени (работает только внутри ЛВС Базальт СПО)">QA&nbsp;Task&nbsp;Status</a> (работает только внутри ЛВС)</td></tr>
