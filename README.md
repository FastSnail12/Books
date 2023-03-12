# The linux command line

> Графический пользовательский интерфейс делает простые задачи еще проще, а интерфейс командной строки делает сложные задачи выполнимыми.

## Исследование системы

```git
date
```

Выводит дату и время

---

```git
cal
```

Выводи календарь

---

```git
df
```

Просмотр свободного пространства на дисках

---

```git
free
```

Просмотр свободного пространства в памяти

---

```git
exit
```

Завершение сеанса работы терминала

---

```git
pwd
```

Выводит название текущего рабочего каталога

---

```git
cd
```

Выполняет переход в другой каталог

### Сокращенные варианты команды cd

Сокращение | Результат
--- | ---
`cd` | Сменить рабочий каталог на домашний
`cd -` | Сменить рабочий каталог на предыдущий рабочий каталог
`cd ~username` | Сменить рабочий каталог на домашний каталог пользователя username. Например, `cd ~bob` выполнит переход в домашний каталог пользователя bob

---

```git
ls
```

Выводит список содержимого каталога

### Наиболее популярные параметры команды ls

Параметр | Длинный параметр | Описание
--- | --- | ---
`-a` | `--all` | Список всех (all) файлов, даже с именами, начинающимися с точки, которые обычно не выводятся (то есть скрытых)
`-d` | `--directory` | Обычно в присутствии этого параметра команда `ls` выводит информацию о самом каталоге, а не его содержимое. Используйте этот параметр в сочетании с параметром `-l`, чтобы получить дополнительную информацию о каталоге, а не о его содержимом
`-F` | `--classify` | Добавляет в конец каждого имени символ-индикатор (например, прямой слеш, если это имя каталога)
`-h` | `--human-readable` | При использовании длинного формата вывода отображает размеры файлов не в байтах, а в величинах с единицами измерения
`-l` | - | Выводит результаты с использованием длинного формата
`-r` | --reverse | Выводит результаты в обратном порядке. Обычно команда `ls` выводит результаты в алфавитном порядке
`-S` | - | Сортировать результаты по размеру (size)
`-t` | - | Сортировать результаты по времени (time) последнего изменения

### Поля длинного формата вывода команды ls

Пример: `-rw-r--r-- 1 root root 32059 2012-04-03 11:05 oo-cd-cover.odf`

Поле | Назначение
--- | ---
`-rw-r-r--` | Права доступа к файлу. Первый символ указывает тип файла. Например, символом дефиса обозначаются обычные файлы, а символом d — каталоги. Следующие три символа сообщают о правах доступа для владельца файла, следующие три — для членов группы, которой принадлежит файл, и последние три — для всех остальных.
`1` | Число жестких ссылок на файл. Подробнее о ссылках рассказывается в конце этой главы
`root` | Имя пользователя, владеющего файлом
`root` | Имя группы, владеющей файлом
`32059` | Размер файла в байтах
`2012-04-03 11:05` | Дата и время последнего изменения файла
`oo-cd-cover.odf` | Имя файла

---

```git
file
```

Определяет тип файла

---

```git
less
```

Выводит содержимое файла

---

### Каталоги в системе Linux
Поле | Назначение
--- | ---
`/` | Корневой каталог, откуда все начинается
`/bin` | Содержит двоичные (binaries) файлы (программы), необходимые для загрузки и функционирования системы
`/boot` | Содержит ядро Linux, образ начального RAM-диска (с драйверами, необходимыми на этапе загрузки) и сам загрузчик. Интересные файлы: • /boot/grub/grub.conf или menu.lst, используются для настройки загрузчика • /boot/vmlinuz, ядро Linux
`/dev` | Специальный каталог, содержащий узлы устройств. «Все сущее есть файл» применяется также к устройствам. Здесь ядро хранит список всех известных ему устройств
`/etc` | Каталог /etc содержит все системные конфигурационные файлы. Здесь же хранится коллекция сценариев командной оболочки, запускающих системные службы во время загрузки. Практически все файлы в этом каталоге содержат обычный читаемый текст. Интересные файлы: в /etc все интересно, но, на мой взгляд, особенный интерес представляют: • /etc/crontab, файл, определяющий время запуска автоматизированных заданий; • /etc/fstab, таблица устройств хранения и соответствующих им точек монтирования; • /etc/passwd, список всех учетных записей пользователей 
`/home` | В обычных конфигурациях каждому пользователю выделяется свой домашний каталог в каталоге /home. Простые пользователи могут записывать что-нибудь только в файлы, находящиеся в их домашних каталогах. Это ограничение защищает систему от необдуманных действий пользователей 
`/lib` | Содержит файлы разделяемых библиотек, используемых основными системными программами. Они напоминают библиотеки DLL в Windows 
`/lost+found` | Каждый раздел или устройство, отформатированные с использованием файловой системы Linux, такой как ext3, будут иметь этот каталог. Он используется на случай частичного восстановления повреждений в файловой системе. Если с системой ничего страшного не происходило, этот каталог будет оставаться пустым
`/media` | В современных системах Linux каталог /media будет содержать точки монтирования съемных носителей, таких как USB-диски, CD-ROM и т. д., которые монтируются в момент подключения 
`/mnt` | В старых системах Linux каталог /mnt содержал точки монтирования съемных носителей, монтируемых вручную
`/opt` | Каталог /opt используется для установки «необязательного» (optional) программного обеспечения. В основном используется для установки коммерческого программного обеспечения 
`/proc` | Специальный каталог. Не является фактической файловой системой, в том смысле, что файлы в этом каталоге не хранятся на жестком диске. Это виртуальная файловая система, поддерживаемая ядром Linux. Файлы в ней являются «глазками», через которые можно заглянуть в ядро. Эти файлы доступны для чтения и помогают «увидеть» компьютер глазами ядра
`/root` | Домашний каталог пользователя root 
`/sbin` | Каталог содержит системные двоичные файлы (system binaries). Эти программы выполняют жизненно важные задачи и обычно запускаются только суперпользователем 
`/tmp` | Каталог /tmp играет роль временного хранилища для временных файлов, создаваемых разными программами. В некоторых конфигурациях этот каталог принудительно очищается при каждой перезагрузке системы
`/usr` | Дерево каталогов /usr является, пожалуй, самым объемным в системе Linux. В нем хранятся все программы и файлы поддержки, используемые обычными пользователями 
`/usr/bin` | Каталог /usr/bin содержит выполняемые программы, установленные дистрибутивом Linux. Очень часто в этом каталоге хранятся тысячи программ 
`/usr/lib` | Содержит разделяемые библиотеки для программ в /usr/bin 
`/usr/local` | Дерево каталогов /usr/local используется для установки тех программ, которые не входят в состав дистрибутива, но должны быть доступны всем пользователям в системе. Программы, собираемые из исходных текстов, обычно устанавливаются в /usr/local/bin. В новейших версиях системы Linux это дерево каталогов присутствует, но остается пустым, пока системный администратор не добавит туда что-нибудь 
`/usr/sbin ` | Содержит дополнительные программы для администрирования 
`/usr/share` | Каталог /usr/share содержит все разделяемые данные, используемые программами в /usr/bin, в том числе конфигурационные файлы с настройками по умолчанию, ярлыки, фоновые изображения для рабочего стола, звуковые файлы и т. д. 
`/usr/share/doc` | Большинство пакетов, установленных в системе, содержат документацию. Вся эта документация, организованная по пакетам, хранится в каталоге  /usr/share/doc 
`/var` | За исключением /tmp и /home, все упоминавшиеся выше каталоги остаются относительно статичными; то есть их содержимое почти не меняется. Дерево каталогов /var — как раз то место, где хранятся часто изменяемые данные: различные базы данных, буферные файлы, почта пользователей и пр. 
`/var/log` | Каталог /var/log содержит файлы журналов с записями о различных действиях, выполнявшихся в системе. Они очень важны и должны проверяться время от времени. Наиболее полезным является файл /var/log/ messages. Обратите внимание, что из соображений безопасности некоторые системы требуют привилегий суперпользователя для просмотра файлов журналов

---
---

## Операции с файлами и каталогами

```git
cp
```

Копирует файлы и каталоги

### Параметры команды cp

Параметр | Значение
--- | ---
`-a`, `--archive` | Скопировать файлы и каталоги со всеми атрибутами, включая идентификаторы владельцев и права доступа. Без этого параметра копии обычно получают значения атрибутов по умолчанию, определенных для пользователя, выполняющего копирование
`-i`, `--interactive` | Запрашивать у пользователя подтверждение перед перезаписью существующего файла. Если этот параметр отсутствует, команда `cp` просто перезапишет существующие файлы
`-r`, `--recursive` | Рекурсивно копировать каталоги и их содержимое. Это обязательный параметр (или параметр `-a`) при копировании каталогов
`-u`, `--update` | При копировании файлов из одного каталога в другой копировать только файлы, отсутствующие в каталоге назначения или более новые
`-v`, `--verbose` | Выводить информационные сообщения в процессе копирования

---

```git
mv
```

Перемещает/переименовывает файлы и каталоги

### Параметры команды mv

Параметр | Значение
--- | ---
`-i`, `--interactive` | Запрашивать у пользователя подтверждение перед перезаписью существующего файла. Если этот параметр отсутствует,­команда `mv` просто перезапишет существующие файлы
`-u`, `--update` | При перемещении файлов из одного каталога в другой перемещать только файлы, отсутствующие в каталоге назначения или более новые
`-v`, `--verbose` | Выводить информационные сообщения в процессе перемещения

---

```git
mkdir
```

Создает каталоги

---

```git
rm
```

Удаляет файлы и каталоги

### Параметры команды rm

Параметр | Значение
--- | ---
`-i`, `--interactive` | Запрашивать у пользователя подтверждение перед удалением существующего файла. Если этот параметр отсутствует,­команда `rm` просто удалит существующие файлы
`-r`, `--recursive` | Рекурсивно удалить каталоги. То есть вместе с каталогом будут удалены все его подкаталоги. Это обязательный параметр при удалении каталогов
`-f`, `--force` | Игнорировать отсутствующие файлы и не запрашивать подтверждения. Этот параметр отменяет действие параметра `--interactive`
`-v`, `--verbose` | Выводить информационные сообщения в процессе удаления

---

```git
ln
```

Создает жесткие и символические ссылки

### Групповые символы

Групповой символ | Соответствует
--- | ---
`*` | Любая последовательность любых символов
`?` | Любой один символ
`[символы]` | Любой один символ из указанного множества символов
`[!символы]` | Любой один символ, не принадлежащий указанному множеству символов
`[[:класс:]]` | Любой один символ, принадлежащий указанному классу

### Наиболее часто используемые классы символов

Класс символов | Соответствует
--- | ---
`[:alnum:]` | Любой алфавитно-цифровой символ
`[:alpha:]` | Любой алфавитный символ
`[:digit:]` | Любой цифровой символ
`[:lower:]` | Любая буква в нижнем регистре
`[:upper:]` | Любая буква в верхнем регистре

---
---

## Работа с командами

```git
type
```

Сообщает, как интерпретируется имя указанной команды.

---

```git
which
```

Сообщает, какая программа будет выполнена.

---

```git
help
```

Получение справки для встроенных команд

---

```git
--help
```

Вывод инструкции по использованию

---

```git
man
```

Выводит страницу справочного руководства с описанием команды.

---

```git
apropos
```

Выводит список подходящих команд.

---

```git
info
```

Выводит запись из справочного руководства Info с описанием команды.

---

```git
whatis
```

Выводит краткое описание команды.

---

```git
alias/unalias
```

Создает псевдоним для команды. Пример: `alias foo='cd /usr; ls; cd -'`. Они исчезают по завершении сеанса работы с командной оболочкой.

---
