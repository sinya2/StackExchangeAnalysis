# StackExchangeAnalysis

# Постановка задачи

Продуктами компании JetBrains пользуются люди во всем мире. У каждого пользователя есть свои специфические потребности и проблемы, которые пытаются решить продукты JetBrains. Однако многие потребности пользователей могут выходить за рамки существующих продуктов, а значит знание наиболее актуальных проблем потенциально может открыть компании новые развивающиеся рынки и помочь в создании новых продуктов.
В рамках данной практики была поставлена задача анализа ряда ресурсов проекта StackExchange (самого крупного структурированного веб-сайта с вопросами и ответами) с целью  выделения наиболее популярных тем (тегов, ключевых слов или словосочетаний), встречающихся в постах и комментариях. Также стояла задача формирования метрик роста популярности отдельных тем в последнее время для возможности строить прогноз их популярности на ближайшее будущее.

# Основные выводы

* Python3 - самый обсуждаемый язык программирования среди русскоязычных пользователей. Топ-5 языков: JavaScript, PHP, Python, Java, C#. 
* За последний год активно росли Kotlin, C#, Delphi, Golang и bash. 

* Альфа и омега анализа данных - Python+Pandas. Но если вы ученый - вы предпочтете R. Keras обсуждается чаще, чем TensorFlow. За последний год заметно вырос интерес к  PyTorc.
* Растет обсуждение таких сфер применения DataScience как распознавание изображений и аудиофайлов, рекомендательные системы.
* С возрастающей активностью обсуждается применение информационного критерия Акаике, который является одним из методов, используемых для выбора лучшей модели из класса моделей с использованием штрафной вероятности. Также растет интерес к вопросам уменьшения размерностей данных.

* Активно обсуждается автоматизация тестирования веб приложений, самый популярный язык для этого Java, но Python сокращает разрыв, а, возможно, уже догнал его по популярности. Самая обсуждаемая библиотека для тестирования - Selenium.
* Растет интерес к тестированию безопасности и приоритезации багов, регрессионному тестированию.

* Очень сильно растет интерес к вопросам, возникающим в связи с применением теоретической информатики в других областях исследований 
* Наблюдается растущий запрос на самообразование, причем по книгам, а не по видеокурсам. 
* Преподаватели CS крайне обеспокоены проблемой плагиата.
* За последний год наблюдается рост интереса к теме обучения IT детей младшего школьного возраста.

* Разделения по веткам - удачны, обсуждаемые на разных ветках темы слабо пересекаются между собой.
* Метрика weight лучше counts отражает актуальные тренды. 
* При сравнении полученных в исследовании данных о популярности с другими рейтингами следует помнить, что  данном исследовании метрики показывают именно “обсуждаемость” объекта и интерес к нему, а не используемость в работе, например.
* К выводам о популярности по небольшим ресурсам (1k-10k вопросов) следует относится максимально осторожно, влияние одного единственного популярного вопроса может существенно искажать картину по всем метрикам, фиксирующим рост популярности. 


# Путеводитель по материалам проекта

* Изначальная [структура](https://i.stack.imgur.com/AyIkW.png) хранения данных.
* [Локальная СУБД](https://dbdesigner.page.link/mLRLfsiM3ws17QnX8) на основе postgreSQL.
* [Автоматизированный](https://github.com/sinya2/StackExchangeAnalysis/blob/main/Upload%20new%20project%20to%20DB.ipynb) процесс добавления данных дополнительной ветки StackExchange.
* [Код на Python и SQL](https://github.com/sinya2/StackExchangeAnalysis/blob/main/Tags%20analysis%20on%20DB.ipynb), позволяющий создавать промежуточные таблицы тегов, извлекая их из нужной выборки строк таблицы Posts, выполнять анализ популярности тегов на основе предложенных метрик для отдельных проектов, создавать словари ключевых слов, а также биграмм и триграмм, извлекая их из заголовков постов на стороне базы данных.
* [Код на Python](https://github.com/sinya2/StackExchangeAnalysis/blob/main/Title%20analysis.ipynb) позволяющий проводить анализ популярности ключевых слов, биграмм и триграмм из заголовков на основе предложенных метрик для отдельных проектов.
* Полный [отчет](https://docs.google.com/document/d/1pbzEoJp2WkRStS6X9DDhm2JR2pVwZ2_9SfleSVvcVwQ/edit#) по проекту с подробным анализом каждого ресурса.

