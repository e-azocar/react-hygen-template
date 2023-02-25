---
to: "<%= locals.scss ? `src/components/${name}/${name}.module.scss` : `src/components/${name}/${name}.module.css` %>"
---

.<%= name %> {
  padding: 0;
  margin: 0;
}
