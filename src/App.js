import React from 'react'
import { hot } from 'react-hot-loader'
import { connect } from 'react-redux'
import PropTypes from 'prop-types'
import Choices from './Choices'
import Story from './Story'
import { makeChoice } from './state/actions'
import './App.css'
const App = props =>
  props.ending ? (
    <div className='ending'>The End</div>
  ) : (
    <div className='App'>
      <Story sceneText={props.sceneText} tags={props.tags} />
      <Choices choices={props.currentChoices} makeChoice={props.makeChoice} />
    </div>
  )

App.propTypes = {
  tags: PropTypes.object.isRequired,
  currentChoices: PropTypes.array,
  sceneText: PropTypes.array,
  makeChoice: PropTypes.func.isRequired,
  ending: PropTypes.bool
}

const stateToProps = state => ({
  tags: state.tags,
  currentChoices: state.currentChoices,
  sceneText: state.sceneText,
  ending: state.ending
})
const dispatchToProps = dispatch => ({
  makeChoice: idx => dispatch(makeChoice(idx))
})
export default connect(stateToProps, dispatchToProps)(hot(module)(App))
