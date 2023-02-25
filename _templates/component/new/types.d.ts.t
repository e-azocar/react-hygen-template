---
to: "<%= locals.tsx ? `src/components/${name}/types.d.ts` : null %>"
---
<% const compName = h.inflection.undasherize(name) -%>
import type { ReactElement, ReactNode } from 'react'

export type <%= compName %>Props = {
  children?: string | ReactElement | ReactElement[] | ReactNode | ReactNode[]
}
