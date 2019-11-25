import { createStore, applyMiddleware, compose } from 'redux'
import { createLogger } from 'redux-logger'
import { devToolsEnhancer } from 'redux-devtools-extension'
import inkGame, { INITIAL_STATE } from './reducers'

const logger = createLogger({})

const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSIONS_COMPOSE__ || compose

export default createStore(inkGame, INITIAL_STATE,
  composeEnhancers(devToolsEnhancer(), applyMiddleware(logger)))
