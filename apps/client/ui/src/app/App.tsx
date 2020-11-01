import React from 'react'
import { useQuery } from 'relay-hooks'
import { graphql } from 'babel-plugin-relay/macro'

import { AppQuery } from './__generated__/AppQuery.graphql'

const query = graphql`
  query AppQuery {
    ping
  }
`

export default function App() {
  const { props } = useQuery<AppQuery>(query)

  if (!props) {
    return <div>Loading</div>
  }

  return (
    <div>{ props.ping }</div>
  )
}
