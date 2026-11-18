# 🐉 lore

Lore keeps complete artifacts, dates them, and lets you find them again.

A lore item is one captured artifact: a small catalog card beside opaque, unchanged content.

## Get started

Copy `.lore/` into your project:

```sh
git clone https://github.com/zealtv/lore
cp -R lore/.lore my-project/
```

Prepare an item, a card beside its content:

```sh
cd my-project
mkdir -p spec/content
printf '# Interaction model\n\nThe accepted interaction rules.\n' > spec/item.md
echo "Speak plainly." > spec/content/rules.md
```

Keep it, and find it again:

```sh
./.lore/lore.sh keep spec interaction-model
./.lore/lore.sh index
./.lore/lore.sh fetch "interaction model"
```

## The library

```text
.lore/
  INDEX.md                             generated catalog, one line per item
  items/2026-06-27-interaction-model/
    item.md                            the catalog card: a title and a description
    content/                           the complete captured artifact
```

Some artifacts should remain whole: prior art, specifications, design records, decision history. A changed source is a new capture with a new id; old editions stay where they are. Lore has no `drop`, `expire`, or `sweep` command.

## Notes

- To upgrade, run `lore/install.sh my-project`. It leaves `items/` alone.
- The full protocol lives in [`.lore/README.md`](.lore/README.md).
- The file system is the protocol.
