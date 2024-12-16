# Список команд для оптимизации контейнеров и образов Docker

Изучив документацию Docker и различные статьи на данную тему, я составила список из 10 команд, которые могут помочь поддерживать Docker-окружение в чистоте и порядке. Эти команды предназначены для оптимизации использования пространства на диске, удаления ненужных контейнеров и образов, сетей и томов.

## Содержание

1. [Контейнеры](#containers)
1. [Образы](#images)
1. [Тома](#volumes)
1. [Сети](#networks)
1. [Логи](#logs)
1. [Кэш](#cache)

<h2 id="containers">Контейнеры</h2>

<a name="containers--container"></a><a name="1.1"></a>

- [1.1](#containers--container) Удаление остановленных контейнеров

```bash
docker container prune -f
```

<!-- TODO: описание команды -->

<a name="containers--container-filter"></a><a name="1.2"></a>

- [1.2](#containers--container-filter) Удаление контейнеров с использованием фильтрации

```bash
docker container prune --filter "label!=keep"
```

<!-- TODO: описание команды -->

<a name="containers--stats"></a><a name="1.3"></a>

- [1.3](#containers--stats) Просмотр статистики использования ресурсов для запущенных контейнеров

```bash
docker stats
```

<!-- TODO: описание команды -->

<h2 id="images">Образы</h2>

<a name="images--image"></a><a name="2.1"></a>

- [2.1](#images--image) Удаление неиспользуемых образов

```bash
docker image prune -a -f
```

<!-- TODO: описание команды -->

<a name="images--image-filter"></a><a name="2.2"></a>

- [2.2](#images--image-filter) Удаление неиспользуемых образов с использованием фильтрации

```bash
docker image prune -a --filter "until=24h"
```

<!-- TODO: описание команды -->

<a name="images--pattern"></a><a name="2.3"></a>

- [2.3](#images--pattern) Удаление образов с применением паттерна

```bash
docker images -a | grep "pattern" | awk '{print $3}' | xargs docker rmi
```

<!-- TODO: описание команды -->

<h2 id="volumes">Тома</h2>

<a name="volumes--volume"></a><a name="3.1"></a>

- [3.1](#volumes--volume) Удаление неиспользуемых томов

```bash
docker volume prune -f
```

<!-- TODO: описание команды -->

<h2 id="networks">Сети</h2>

<a name="networks--network"></a><a name="4.1"></a>

- [4.1](#networks--network) Удаление неиспользуемых сетей

```bash
docker network prune -f
```

<!-- TODO: описание команды -->

<h2 id="logs">Логи</h2>

<a name="logs--limits"></a><a name="5.1"></a>

- [5.1](#logs--limits) Ограничения на размер логов при запуске контейнера

```bash
docker run --log-opt max-size=10m --log-opt max-file=3 mycontainer
```

<!-- TODO: описание команды -->

<h2 id="cache">Кэш</h2>

<a name="cache--builder"></a><a name="6.1"></a>

- [6.1](#cache--builder) Удаление кэша сборки и неиспользуемых объектов

```bash
docker builder prune -f
```

<!-- TODO: описание команды -->
