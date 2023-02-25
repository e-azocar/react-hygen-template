---
to: "<%= locals.tsx ? `src/components/${name}/__test__/${name}.test.tsx` : `src/components/${name}/__test__/${name}.test.js` %>"
---
<% const comp = h.inflection.undasherize(name) %>import React from 'react'
import renderer from 'react-test-renderer'
import <%= comp %> from '..'

it('<%= comp %> Renders', () => {
  const component = renderer.create(<<%= comp %> />)
  const tree = component.toJSON()
  expect(tree).toMatchSnapshot()
})
