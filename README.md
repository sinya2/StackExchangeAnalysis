# StackExchangeAnalysis

# Анонс:
Users of JetBrains products are people from around the world. Each of them has their own specific needs and problems that JetBrains products try to solve. However, there are areas related to different topics and interests that are out of scope of JetBrains products. Knowing the most trending of them can potentially discover evolving markets and help to create new products, identify risks and opportunities for the company.

This internship offers the chance to apply text analysis techniques, mathematical statistics and visualisation to real world data based on discussions of people on the internet. The intern will analyse a large corpus of texts using Python, try different hypotheses and build visualisations on top of that to highlight trend signals.

# Постановка задачи

Главными целями проекта являются выделение наиболее популярных тем, встречающихся в постах и комментариях пользователей проекта [StackExchange](https://archive.org/details/stackexchange), а также формирование трендов таких тем для возможности строить прогноз их популярности на ближайшее будущее.

# На данный момент:

* Изучена изначальная [структура](https://i.stack.imgur.com/AyIkW.png) хранения данных,
* [Спроектирована](https://dbdesigner.page.link/mLRLfsiM3ws17QnX8) и настроена локальная СУБД на основе postgreSQL,
* [автоматизирован](https://github.com/sinya2/StackExchangeAnalysis/blob/da27c7ef83c17289a4ad24acdf86bd206ea95e14/Upload%20new%20project%20to%20DataBase.ipynb) процесс добавления данных дополнительной ветки StackExchange,
* сформированы количественные метрики оценки популярности тем (тегов, ключевых слов или словосочетаний),на основе экспертного мнения, оценены их адекватность 
* написан [код на Python](https://github.com/sinya2/StackExchangeAnalysis/blob/da27c7ef83c17289a4ad24acdf86bd206ea95e14/Tags%20and%20Titles%20analysis.ipynb), позволяющий создавать словарь тегов, извлекая их из нужной выборки строк таблицы Posts, выполнять анализ популярности тегов на основе предложенных метрик для отдельных проектов, создавать словари ключевых слов, а также биграмм и триграмм, извлекая их из заголовков постов.
* выполнен анализ популярности ключевых слов, биграмм и триграмм из заголовков на основе предложенных метрик для отдельных проектов
* написан промежуточный [отчет](https://docs.google.com/document/d/13dQeAWYId06n9avRS-lt9LdXgU1Nkji7KB6Af-XINJE/edit#) по проекту.

