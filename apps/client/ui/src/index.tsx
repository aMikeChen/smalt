import React from 'react';
import ReactDOM from 'react-dom';
import { RelayEnvironmentProvider } from 'relay-hooks'
import RelayEnvironment from './relay/RelayEnvironment'
import reportWebVitals from './reportWebVitals';
import App from './app/App'

ReactDOM.render(
  <React.StrictMode>
    <RelayEnvironmentProvider environment={RelayEnvironment}>
      <App />
    </RelayEnvironmentProvider>
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
