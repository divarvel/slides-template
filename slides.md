---
title: Test talk
#light: true
#ratio43: true
overlay: "@clementd / @gcouprie"
author:
  - name: Clément Delafargue
    desc:
      - Software developer at <a href="https://bellroy.com">Bellroy</a>
      - <a href="https://framapiaf.org/clementd">@clementd</a>
  - name: Geoffroy Couprie
    desc:
      - Apollo GraphQL
      - "@geal@mastodon.social"
---

# Centered title

---

# Centered title even when it's long and spans multiple lines

---

# Top title

- With
- content

---

# [Jumbo text]{.jumbo}

---

::: jumbogroup

## [a group of]{.jumbo}
## [big jumbo text]{.jumbo}
## [because it's fun]{.jumbo}

::::::::::

---

```haskell
test :: Test
test = do
  traverse (`xor` b) [test]
  
```

---

# Title that should be centered but is not because of notes

::: notes
| notes that are displayed because the right flag is added to the pandoc
| invocation. The leading `|` character allows to preserve line breaks,
| that's convenient in notes
:::

---

:::bigimage
![](./assets/puna.jpg)
:::
