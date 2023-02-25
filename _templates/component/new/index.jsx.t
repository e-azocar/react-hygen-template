---
to: "<%= !locals.tsx ? `src/components/${name}/index.jsx` : null %>"
---
<% const compName = h.inflection.undasherize(name) -%>
<% if (locals.state) { -%>
import React, { useState } from 'react'

const <%= compName %> = () => {
  const [state, setState] = useState()

  return (
    <div><%= compName %></div>
  )
}
<% } else { -%>
import React from 'react'

const <%= compName %> = () => {
  return (
    <div><%= compName %></div>
  )
}
<% } -%>

export default <%= compName %>
