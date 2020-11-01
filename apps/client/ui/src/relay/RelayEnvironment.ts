import {
  CacheConfig,
  Environment,
  Network,
  RecordSource,
  RequestParameters,
  Store,
  Variables,
} from 'relay-runtime'

const API_ENDPOINT = process.env.REACT_APP_API_ENDPOINT!

async function fetchRelay(params: RequestParameters, variables: Variables, _cacheConfig: CacheConfig) {
  const token = localStorage.getItem('token')
  const response = await fetch(API_ENDPOINT, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      ...(token ? {
        'Authorization': `Bearer ${token}`
      } : null)
    },
    body: JSON.stringify({
      query: params.text,
      variables,
    }),
  })

  const json = await response.json()

  if (Array.isArray(json.errors)) {
    throw json.errors
  }

  return json
}

export default new Environment({
  network: Network.create(fetchRelay),
  store: new Store(new RecordSource(), {
    gcReleaseBufferSize: 10,
  })
})
