import React from 'react'
import PropTypes from 'prop-types'

const Choices = ({ choices, makeChoice }) => (
  <section className='choices'>
    <ul>
      {choices.map(choice => (
        <li key={choice.index} onClick={() => makeChoice(choice.index)}>
          {choice.text}
        </li>
      ))}
    </ul>
  </section>
)

Choices.propTypes = {
  choices: PropTypes.array,
  makeChoice: PropTypes.func
}

export default Choices
