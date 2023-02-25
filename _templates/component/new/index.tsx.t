---
to: "<%= locals.tsx ? `src/components/${name}/index.tsx` : null %>"
---
<% const compName = h.inflection.undasherize(name) -%>
<% const props = `${compName}Props` -%>
<% if (locals.state) { -%>
import React, { FC, useState } from 'react'
import type { <%= props %> } from './types'

const <%= compName %>: FC<<%= props %>> = () => {
  const [state, setState] = useState()

  return (
    <div><%= compName %></div>
  )
}
<% } else { -%>
import React, { FC } from 'react'
import type { <%= props %> } from './types'

const <%= compName %>: FC<<%= props %>> = () => {
  return (
    <div><%= compName %></div>
  )
}
<% } -%>

export default <%= compName %>
