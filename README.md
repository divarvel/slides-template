# Template for markdown-to-dzslides decks

The goal of the template is to allow a minimal markdown input, with
sensible defaults. The goal is to not have to update the `template.html`
file and work as much as possible in the `slides.md` file.

## How to build

Make sure you have `pandoc` available.

    make standalone # will generate a self-contained HTML file
                    # with notes displayed on slides: an easily
                    # shareable format
    make slides-light.html # will generate a regular HTML file usable
                           # locally, with notes hidden
                           # perfect for presenting

## How to present

`slides-light.html` can be opened directly, but if you have proper multi-screen
support, you can open `onstage.html` instead, which will give you a presenter
screen.

## Default layouts

A single top-level title on a slide will be centered vertically.

```markdown
---

# Slide title

---
```

A top-level title followed by content will be displayed at the top of the screen,
while the following content will be centered vertically in the remaining space.

```markdown
---

# Slide title

Slide contents

---
```

Content with the `jumbo` CSS class will be enlarged to take the full available width.
Multiple jumbo lines have to be grouped in a single `jumbogroup` container.

```markdown
---

# [This is important]{.jumbo}

---
```

```markdown
---

::: jumbogroup
## [First line]{.jumbo}
## [Second line]{.jumbo}
:::

---
```

Images put within a `bigimage` container will take the full available space.

```markdown
---

:::bigimage
![](./assets/puna.jpg)
:::

---
```

## Document metadata

The markdown files where slides are defined contains a _yaml front matter_ section, with
medatada. The supported fields are:

- `title (string)`: the talk title, used in `<title>` and the auto-generated title slide
- `author (author block/array[author block])`: containing information about the author
  - `name (string)`: displayed on the title slide and the author slide
  - `desc (string / array[string])`: displayed on the author slide
- `overlay (string)`: text displayed on the bottom right of all slides (except title & author slides).
- `light`: when present, will switch to a light theme
- `ratio43`: when present, will switch to a 4/3 ratio (instead of the 16/9 default).
