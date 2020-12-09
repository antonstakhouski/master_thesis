# Цель
Предоставить шаблон для магистерских диссертаций [БГУИР](http://bsuir.by).
Существующие решения:
- [Шаблон для дипломов БГУИР](https://github.com/mstyura/bsuir-diploma-latex). Хорошо задокументированная преамбула, но заточен только под диплом. Требования для диссертации сильно отличаются.
- [thesisby](https://github.com/belgraviton/thesisby). Готовый класс для написания диссертаций по требованиям ВАК Беларуси. Класс содержит множество больших незадокументированных макросов, содержит множество кастомных и устаревших решений.
За основу данного шаблона взят проект [Шаблон для дипломов БГУИР](https://github.com/mstyura/bsuir-diploma-latex).
Исходный шаблон был обновлен, преамбула обновлена в соответствии с документом [ПОЛОЖЕНИЕ о диссертации на соискание степени магистра](https://www.bsuir.by/m/12_100229_1_136219.pdf).

# Отличия от [Шаблон для дипломов БГУИР](https://github.com/mstyura/bsuir-diploma-latex):
- В качестве компилятора используется lualatex, что добавило полноценную поддержку Unicode. Компилятор использует системные шрифты, процесс установки шрифтов стал намного проще.
- Преамбула обновлена в соответствии с [ПОЛОЖЕНИЕ о диссертации на соискание степени магистра](https://www.bsuir.by/m/12_100229_1_136219.pdf)
- Изменены единицы теста. Теперь в тексте отчета используютя part, chapter, section, subsection и subsection.
- Некоторые пакеты были заменены на более новые аналоги.
- Более простой Makefile на основе `latexmk`

# Отличия от [thesisby](https://github.com/belgraviton/thesisby):
- Подробное документирование кода шаблона
- Поддержка Unicode
- Вместо кастомных макросов - максимальное использование готовых решений.

# TODO
- <del>Список литературы в соответствии с требованиями БГУИР (ГОСТ-2003). Сейчас используется ограниченная версия ГОСТ-2003 из пакета biblatex-gost. Хромает перенос строк в списке литературы.</del>
- <del>Добавить полную версию записки. Будет готово после защиты диссертации в июне.<del>

## Установка на Debian, Ubuntu
- установить texlive-full: `sudo apt-get install texlive-full`
- можно приступать к сборке проекта

# Пример
В качестве примера приведены моя пояснительная записка к диссертации [expamples/master_thesis.pdf](https://github.com/antonstakhouski/master_thesis/blob/master/example/master_thesis.pdf)

# Дальнейшее развитие
В шаблон будут вносится изменения в ходе написания дальнейших частей диссертации.
Помощь в доработке шаблона приветствуется.

# Помощь
Проект [Шаблон для дипломов БГУИР](https://github.com/mstyura/bsuir-diploma-latex) является основой для данного шаблона. В нем можно найти более полную документацию и ответы на вопросы.

# Примечание
Проект также используется как хранилище для текста диссертации :)
